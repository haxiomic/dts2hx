
import typescript.ts.NumberLiteralType;
import haxe.rtti.CType.TypeParams;
import typescript.ts.UnionType;
import typescript.ts.UnionOrIntersectionType;
import typescript.ts.TupleTypeNode;
import typescript.ts.TypeReferenceNode;
import typescript.ts.GenericType;
import typescript.ts.TupleType;
import typescript.ts.TupleTypeReference;
import typescript.ts.Node;
import typescript.ts.TypeParameter;
import typescript.ts.TypeReference;
import typescript.ts.InterfaceType;
import typescript.ts.ObjectFlags;
import typescript.ts.ObjectType;
import typescript.ts.TypeFlags;
import typescript.ts.Identifier;
import typescript.ts.TypeParameterDeclaration;
import typescript.ts.NodeBuilderFlags;
import haxe.macro.Printer;
import haxe.ds.ReadOnlyArray;
import haxe.macro.Expr;
import tool.TsSyntaxTools;
import typescript.Ts;
import typescript.ts.CompilerHost;
import typescript.ts.CompilerOptions;
import typescript.ts.Program;
import typescript.ts.SourceFile;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.SyntaxKind;
import typescript.ts.TypeAliasDeclaration;
import typescript.ts.TypeChecker;
import typescript.ts.TypeNode;

using StringTools;
using tool.HaxeTools;
using tool.SymbolAccessTools;
using tool.TsProgramTools;
using tool.TsSymbolTools;
using tool.TsTypeTools;
using TsInternal;
using Lambda;

typedef TsType = typescript.ts.Type;

@:expose
@:nullSafety
class ConverterContext {

	public final entryPointModuleId: String;
	
	/**
		Map of package-paths to HaxeModules
	**/
	public final generatedModules = new Map<String, HaxeModule>();

	public final moduleDependencies: ReadOnlyArray<String>;

	public final log: Log;
	public final tc: TypeChecker;
	public final host: CompilerHost;
	public final program: Program;

	// symbol access map is filled during an initial pass over the program
	// the access path for key-symbols such as types are stored so we can retrieve them later when we have a type-reference
	public final symbolAccessMap: SymbolAccessMap;
	public final haxeTypePathMap: HaxeTypePathMap;

	/**
		Unique list of symbols to convert
		When a type is referenced during conversion, if it is inaccessible (and therefore not converted in the first pass), add it to this queue to be converted
	**/
	final declarationSymbolQueue = new OnceOnlySymbolQueue();

	final locationComments: Bool;

	public function new(moduleName: String, entryPointFilePath: String, compilerOptions: CompilerOptions, locationComments: Bool, ?log_: Log) {
		// this will be used as the argument to require()
		this.locationComments = locationComments;
		this.log = log_ != null ? log_ : new Log();

		this.host = Ts.createCompilerHost(compilerOptions);
		this.program = Ts.createProgram([entryPointFilePath], compilerOptions, host);
		this.tc = program.getTypeChecker();

		this.entryPointModuleId = inline normalizeModuleName(moduleName);
		log.log('<green>Converting module: <b>$entryPointModuleId</b>');

		log.diagnostics(program.getAllDiagnostics());

		var entryPointSourceFile = program.getSourceFile(entryPointFilePath);

		if (entryPointSourceFile == null) {
			throw 'Failed to get entry-point source file';
		}

		var defaultLibSourceFiles = program.getSourceFiles().filter(s -> s.hasNoDefaultLib);

		// list of the module entry points source files, for the currently module and its referenced modules
		var moduleRootSourceFiles: Array<SourceFile> = [entryPointSourceFile];

		// set `moduleName` on source files with a known module
		// `sourceFile.moduleName` is not populated after binding, so let's populate it to help aliasing
		entryPointSourceFile.moduleName = this.entryPointModuleId;
		var moduleReferences = program.resolveAllTypeReferenceDirectives(host);
		for (moduleReference in moduleReferences) {
			if (moduleReference.resolvedTypeReferenceDirective != null) {
				var resolvedFileName = moduleReference.resolvedTypeReferenceDirective.resolvedFileName;
				var packageInfo = moduleReference.resolvedTypeReferenceDirective.packageId;
				var moduleName = packageInfo != null ? packageInfo.name : null;
				// log.error('Referenced module does not have a moduleName in packageInfo <b>${resolvedFileName}</>');
				var sourceFile = resolvedFileName != null ? program.getSourceFile(resolvedFileName) : null;
				if (sourceFile != null) {
					sourceFile.moduleName = moduleName != null ? inline normalizeModuleName(moduleName) : null;
					moduleRootSourceFiles.push(sourceFile);
				} else {
					log.error('Internal error: failed get source file for file <b>"$resolvedFileName"</> (module: <b>"$moduleName"</>)');
				}
			} else {
				log.error('Failed to find referenced module <b>${moduleReference.failedLookupLocations[0]}</b>');
			}
		}

		moduleDependencies = moduleRootSourceFiles.filter(s -> s != entryPointSourceFile).map(s -> cast s.moduleName);

		// populate symbol access map
		symbolAccessMap = new SymbolAccessMap(entryPointModuleId, program, defaultLibSourceFiles.concat(moduleRootSourceFiles), log);

		// generate a haxe type-path for all type or module-class (ValueModule) symbols in the program
		haxeTypePathMap = new HaxeTypePathMap(entryPointModuleId, program, symbolAccessMap, log);

		// convert symbols for just this module
		program.walkReferencedSourceFiles(entryPointSourceFile, (sourceFile) -> {
			for (symbol in program.getExportsOfSourceFile(sourceFile)) {
				TsSymbolTools.walkDeclarationSymbols(symbol, tc, (symbol, _) -> {
					declarationSymbolQueue.tryEnqueue(symbol);
				});
			}
		});

		// convert declaration symbols (types and module variables)
		// declarationSymbolQueue grows as types are referenced during conversion
		while (!declarationSymbolQueue.empty()) {
			var symbol: Symbol = cast declarationSymbolQueue.dequeue();

			// `Alias` here does not mean type-alias, instead it means export-alias (like `export {Type}`)
			// aliases are accounted for with SymbolAccess and don't need to handled here
			var handled = symbol.flags & SymbolFlags.Alias != 0;

			if (symbol.flags & (SymbolFlags.Type | SymbolFlags.ValueModule) != 0) {
				// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
				convertTypeSymbol(symbol);
				handled = true;
			}

			if (symbol.flags & (SymbolFlags.Variable | SymbolFlags.Function) != 0) {
				// FunctionScopedVariable | BlockScopedVariable | Function
				//@! if top-level global declarations then these need to go into Global.hx, otherwise we can ignore
				//@! we could also get the containing haxe module and add here, this create an order-dependence but that might be ok 
				for (access in symbolAccessMap.getAccess(symbol)) {
					switch access {
						case Global([_]):

						default:
					}
				}
				handled = true;
			}

			if (symbol.flags & (SymbolFlags.NamespaceModule) != 0) {
				// NamespaceModule
				handled = true;
			}

			if (!handled) {
				log.error('Unhandled symbol in declarationSymbol queue', symbol);
			}
		} 
	}

	/**
		Returns a TypePath for a given symbol
		The symbol must have flags Type or ValueModule
		This also queues this symbol's type to be converted if it isn't already
	**/
	function getHaxeTypePath(symbol: Symbol, accessContext: SymbolAccess): TypePath {
		var hxTypePath = haxeTypePathMap.getTypePath(symbol, accessContext);
		if (!hxTypePath.isExistingStdLibType) {
			declarationSymbolQueue.tryEnqueue(symbol);
		}
		return {
			name: hxTypePath.name,
			pack: hxTypePath.pack,
		}
	}

	function convertTypeSymbol(symbol: Symbol) {
		// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
		// type symbols are mutually exclusive so we can return after converting the first match
		// log.log('convertTypeSymbol', symbol);

		var pos = TsSymbolTools.getPosition(symbol);

		if (symbol.flags & (SymbolFlags.Class | SymbolFlags.Interface) != 0) {
			for (access in symbolAccessMap.getAccess(symbol)) {
				var typePath = haxeTypePathMap.getTypePath(symbol, access);
				var superClass = null; // @! todo
				var interfaces = []; // @! todo
				var isClassAndInterface = (symbol.flags & SymbolFlags.Interface != 0) && (symbol.flags & SymbolFlags.Class != 0);

				// if it's a class and interface symbol, we use class
				var isInterface = symbol.flags & SymbolFlags.Interface != 0 && !isClassAndInterface;

				var meta = new Array<MetadataEntry>();

				if (!isInterface) {
					meta.push(access.toAccessMetadata());
				}

				if (isClassAndInterface) {
					// in typescript this symbol can be used as a class or an interface
					// we have no way of representing this in haxe yet
					// we add metadata to mark the class which we might be able to use in the future
					meta.push({name: ':interface', pos: pos});
				}

				var hxClass: HaxeModule = {
					pack: typePath.pack,
					name: typePath.name,
					fields: [],
					kind: TDClass(superClass, interfaces, isInterface, false),
					params: typeParamDeclFromTypeDeclarationSymbol(symbol, access),
					isExtern: true,
					doc: getDoc(symbol),
					meta: meta,
					pos: pos,
					subTypes: [],
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}

				saveHaxeModule(hxClass);
			}
			return;
		}

		if (symbol.flags & SymbolFlags.Enum != 0) {
			for (access in symbolAccessMap.getAccess(symbol)) {
				// a ConstEnum does not exist at runtime
				var isCompileTimeEnum = symbol.flags & SymbolFlags.ConstEnum != 0;
				
				var hxEnumType = TsSymbolTools.getComplexTypeOfEnumSymbol(symbol, tc);
				
				var enumMembers = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.EnumMember != 0);
				var hxEnumFields: Array<Field> = enumMembers.map(s -> {
					var safeName = HaxeTools.toSafeIdent(s.escapedName);
					var nameChanged = s.escapedName != safeName;
					return ({
						name: safeName,
						pos: TsSymbolTools.getPosition(s),
						kind: FVar(null, isCompileTimeEnum ? HaxeTools.primitiveValueToExpr(tc.getConstantValue(cast s.valueDeclaration)) : null),
						doc: getDoc(s),
						meta: nameChanged ? [{name: ':native', params: [s.escapedName.toStringExpr(pos)], pos: pos}] : [],
					}: Field);
				});

				var typePath = haxeTypePathMap.getTypePath(symbol, access);

				var hxEnumDef: HaxeModule = {
					pack: typePath.pack,
					name: typePath.name,
					kind: TDAbstract(hxEnumType, [hxEnumType], [hxEnumType]),
					params: [],
					isExtern: true,
					fields: hxEnumFields,
					doc: getDoc(symbol),
					meta: (isCompileTimeEnum ? [] : [access.toAccessMetadata()]).concat([{name: ':enum', pos: pos}]),
					pos: pos,
					subTypes: [],
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}
				
				saveHaxeModule(hxEnumDef);
			}
			return;
		}

		if (symbol.flags & SymbolFlags.TypeAlias != 0) {
			for (access in symbolAccessMap.getAccess(symbol)) {
				var typeAliasDeclaration: Null<TypeAliasDeclaration> = cast symbol.getDeclarationsArray().filter(node -> node.kind == SyntaxKind.TypeAliasDeclaration)[0];

				if (typeAliasDeclaration == null) {
					log.error('TypeAlias symbol did not have a TypeAliasDeclaration', symbol);
				}

				var tsType = tc.getDeclaredTypeOfSymbol(symbol);
				var hxAliasType = complexTypeFromTsType(tsType, access, typeAliasDeclaration);
				// alternatively, we can get the type from the declaration node
				// var hxAliasType: ComplexType = complexTypeFromTypeNode(typeAliasDeclaration.type, access, typeAliasDeclaration); 

				var typePath = haxeTypePathMap.getTypePath(symbol, access);

				// if this symbol is also a ValueModule then it needs to have fields
				// to enable this, we create a pseudo typedef with an abstract
				var hxTypeDef: HaxeModule = if (symbol.flags & SymbolFlags.ValueModule != 0) {
					pack: typePath.pack,
					name: typePath.name,
					fields: [],
					kind: TDAbstract(hxAliasType, [hxAliasType], [hxAliasType]),
					params: typeParamDeclFromTypeDeclarationSymbol(symbol, access, typeAliasDeclaration), // is there a case where an enum can have a TypeParameter?
					doc: getDoc(symbol),
					isExtern: true,
					meta: [access.toAccessMetadata(), {name: ':forward', pos: pos}, {name: ':forwardStatics', pos: pos}],
					pos: pos,
					subTypes: [],
					tsSymbol: symbol,
					tsSymbolAccess: access,
				} else {
					pack: typePath.pack,
					name: typePath.name,
					fields: [],
					kind: TDAlias(hxAliasType),
					params: typeParamDeclFromTypeDeclarationSymbol(symbol, access, typeAliasDeclaration),
					doc: getDoc(symbol),
					pos: pos,
					subTypes: [],
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}

				saveHaxeModule(hxTypeDef);
			}
			return;
		}

		// here we have a ValueModule that is not paired with a type
		if (symbol.flags & SymbolFlags.ValueModule != 0) {
			for (access in symbolAccessMap.getAccess(symbol)) {
				var typePath = haxeTypePathMap.getTypePath(symbol, access);

				var hxModuleClass: HaxeModule = {
					pack: typePath.pack,
					name: typePath.name,
					fields: [],
					kind: TDClass(null, [], false, false),
					params: [],
					isExtern: true,
					doc: getDoc(symbol),
					meta: [access.toAccessMetadata()],
					pos: pos,
					subTypes: [],
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}

				saveHaxeModule(hxModuleClass);
			}
			return;
		}

		log.error('Symbol not a handled <b>convertTypeSymbol()</>', symbol);
	}

	/**
		A key that uniquely identifies a haxe module in a haxe project
		Lower case string to represent module file case-insensitive collisions
		`a.b.C` -> `a/b/c`
	**/
	function getHaxeModuleKey(pack: Array<String>, name: String) {
		return pack.concat([name]).map(s -> s.toLowerCase()).join('/');
	}

	function saveHaxeModule(module: HaxeModule) {
		var path = getHaxeModuleKey(module.pack, module.name);

		var existingModule = generatedModules.get(path);
		if (existingModule != null) {
			log.warn('<b>saveHaxeModule():</> Module <b>"$path"</> has already been generated once and will be overwritten');
			// log.warn('\t Existing module <yellow,b>${existingModule.tsSymbolAccess.toString()}</>', existingModule.tsSymbol);
			// log.warn('\t Overwriting module <yellow,b>${access.toString()}</>', symbol);
			// log.warn('\t All access ' + symbolAccessMap.getAccess(symbol).map(s -> s.toString()));
		}

		if (generatedModules.exists(path)) {
			debug();
		}

		generatedModules.set(path, module);
	}

	function getDoc(symbol: Symbol) {
		var sourceLocationInfo = [];

		if (locationComments) {
			var node = if (symbol.valueDeclaration != null) {
				symbol.valueDeclaration;
			} else {
				symbol.getDeclarationsArray()[0];
			}

			if (node != null) {
				var sourceFile = node.getSourceFile();
				if (sourceFile != null) {
					var start = node.getStart();
					var lineAndCharacter = sourceFile.getLineAndCharacterOfPosition(start);
					var line = lineAndCharacter.line;
					var character = lineAndCharacter.line;
					sourceLocationInfo.push('${cwdRelativeFilePath(sourceFile.fileName)}:${line + 1}${character > 0 ? ':${character + 1}' : ''}');
				}
			}
		}

		return symbol.getDocumentationComment(tc)
			.map(s -> s.text.trim())
			.concat(sourceLocationInfo)
			.join('\n\n');
	}

	/**
		`accessContext` is the symbol access path for the symbol that contains this type reference
		This is required because if we're in a Global access context, type references should prefer global access (and modular context should prefer modular access).
		For example, in node.js there's a type `EventEmitter` that has both global (`NodeJS.EventEmitter` and modular access `require("event").EventEmitter`)
		If `EventEmitter` is referenced by another globally accessible type, then this method should return the global haxe type, and same logic for modular
	**/
	function complexTypeFromTypeNode(node: TypeNode, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		var type = tc.getTypeFromTypeNode(node);
		if (untyped type.intrinsicName == 'error') {
			debug();
			log.error('Internal error: Error getting type from type node', node);
		}
		return complexTypeFromTsType(type, accessContext, enclosingDeclaration);
	}
	
	function complexTypeFromTsType(type: TsType, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		// log.log('complexTypeFromTsType', type);
		// handle fundamental type flags
		return if (type.flags & (TypeFlags.Any) != 0) {
			macro :Any;
		} else if (type.flags & TypeFlags.Unknown != 0) {
			// @! review that there isn't an error preventing a type node from being checked
			log.warn('complexTypeFromTsType(): Unexpected unknown', type);
			debug();
			macro :Any;
		} else if (type.flags & (TypeFlags.String) != 0) {
			macro :String;
		} else if (type.flags & (TypeFlags.Number) != 0) {
			macro :Float;
		} else if (type.flags & (TypeFlags.Boolean) != 0) {
			macro :Bool;
		} else if (type.flags & (TypeFlags.VoidLike | TypeFlags.Never) != 0) {
			macro :Void;
		} else if (type.flags & (TypeFlags.Union) != 0) {
			complexTypeFromUnionType(cast type, accessContext, enclosingDeclaration);
		}
		// @! it would be nice to use an enum-generating support type so we can preserve values of literals, but for now we can use the literal's type
		else if (type.flags & (TypeFlags.StringLiteral) != 0) {
			macro :String;
		} else if (type.flags & (TypeFlags.NumberLiteral) != 0) {
			var numberLiteral: NumberLiteralType = cast type;
			var value: Float = cast numberLiteral.value;
			var isInt = Std.int(value) == value;
			isInt ? macro :Int : macro :Float;
		} else if (type.flags & (TypeFlags.BooleanLiteral) != 0) {
			macro :Bool;
		}

		// @! todo:
		// Enum            = 1 << 5,
		// BigInt          = 1 << 6,
		// EnumLiteral     = 1 << 10,  // Always combined with StringLiteral, NumberLiteral, or Union
		// BigIntLiteral   = 1 << 11,
		// ESSymbol        = 1 << 12,  // Type of symbol primitive introduced in ES6
		// UniqueESSymbol  = 1 << 13,  // unique symbol
		// Intersection    = 1 << 21,  // Intersection (T & U)
		// Index           = 1 << 22,  // keyof T
		// IndexedAccess   = 1 << 23,  // T[K]
		// Conditional     = 1 << 24,  // T extends U ? X : Y
		// Substitution    = 1 << 25,  // Type parameter substitution
		// NonPrimitive    = 1 << 26,  // intrinsic object type

		else if (type.flags & (TypeFlags.TypeParameter) != 0) {
			complexTypeFromTypeParameter(cast type, accessContext, enclosingDeclaration);
		} else if (type.flags & (TypeFlags.Object) != 0) {
			complexTypeFromObjectType(cast type, accessContext, enclosingDeclaration);
		} else {
			log.error('Could not convert type', type);
			macro :Any;
		}
	}

	function complexTypeFromUnionType(unionType: UnionType, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		// if union has null, undefined filter out and consider type as nullable
		var typesWithoutNullable = unionType.types.filter(t -> t.flags & (TypeFlags.Null | TypeFlags.Undefined) == 0);
		var nullable = typesWithoutNullable.length != unionType.types.length;
		// convert union's TsTypes to haxe ComplexTypes
		var hxTypes = typesWithoutNullable.map(t -> complexTypeFromTsType(t, accessContext, enclosingDeclaration)).deduplicateTypes();
		// if union is of length 1, no need for support type
		var unionType = hxTypes.length == 1 ? hxTypes[0] : getSupportUnionType(hxTypes);
		return nullable ? macro :Null<$unionType> : macro :$unionType;
	}

	function complexTypeFromTypeParameter(typeParameterType: TypeParameter, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		// not a fan of using node building `typeParameterToDeclaration` here, could also use typeParameterType.symbol.escapedName
		// not all TypeParameters have symbols however
		var typeParameterDeclaration = tc.typeParameterToDeclaration(typeParameterType, enclosingDeclaration, defaultNodeBuilderFlags);
		return if (typeParameterDeclaration != null) {
			TPath({
				name: TsSyntaxTools.typeParameterDeclarationName(typeParameterDeclaration),
				pack: [],
			});
		} else {
			log.error('Internal error: Failed to determine type parameter name, using `T`', typeParameterType);
			macro :T;
		}
	}

	function complexTypeFromObjectType(objectType: ObjectType, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		// @! todo:
		// Tuple            = 1 << 3,  // Synthesized generic tuple type
		// Anonymous        = 1 << 4,  // Anonymous
		// Mapped           = 1 << 5,  // Mapped
		// Instantiated     = 1 << 6,  // Instantiated anonymous or mapped type
		// ObjectLiteral    = 1 << 7,  // Originates in an object literal
		// EvolvingArray    = 1 << 8,  // Evolving array type
		// ObjectLiteralPatternWithComputedProperties = 1 << 9,  // Object literal pattern with computed properties
		// ContainsSpread   = 1 << 10, // Object literal contains spread operation
		// ReverseMapped    = 1 << 11, // Object contains a property from a reverse-mapped type
		// JsxAttributes    = 1 << 12, // Jsx attributes type
		// MarkerType       = 1 << 13, // Marker type used for variance probing
		// JSLiteral        = 1 << 14, // Object type declared in JS - disables errors on read/write of nonexisting members
		// FreshLiteral     = 1 << 15, // Fresh object literal
		// ArrayLiteral     = 1 << 16, // Originates in an array literal
		// ObjectRestType   = 1 << 17, // Originates in object rest declaration
		return if ((objectType.objectFlags & ObjectFlags.Reference) != 0) {
			complexTypeFromTypeReference(cast objectType, accessContext, enclosingDeclaration);
		} else if (objectType.objectFlags & ObjectFlags.ClassOrInterface != 0) {
			complexTypeFromInterfaceType(cast objectType, accessContext, enclosingDeclaration);
		} else if (objectType.objectFlags & ObjectFlags.Anonymous != 0) {
			var fields = new Array<Field>();
			var properties = tc.getPropertiesOfType(objectType);
			for (p in properties) {
				var field = fieldFromSymbol(p, accessContext, enclosingDeclaration);
				if (field != null) {
					fields.push(field);
				} else {
					log.error('Could not convert anonymous object property', p);
				}
			}
			TAnonymous(fields);
		} else {
			log.error('Could not convert object type <b>${objectType.getObjectFlagsInfo()}</b> ${objectType.objectFlags}', objectType);
			// debug();
			macro :Any;
		}
	}

	function complexTypeFromTypeReference(typeReference: TypeReference, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		// determine reference sub-type
		return if ((typeReference.objectFlags & ObjectFlags.ClassOrInterface) != 0) {
			complexTypeFromGenericType(cast typeReference, accessContext, enclosingDeclaration);
		} else if ((typeReference.target.objectFlags & ObjectFlags.Tuple != 0)) {
			// it's a TupleTypeReference if its target is a Tuple
			complexTypeFromTupleTypeReference(cast typeReference, accessContext, enclosingDeclaration);
		} else {
			if (typeReference.target == cast typeReference) { // avoid direct cycles
				// this can happen with TupleReferences and GenericTypes but we shouldn't get this 
				log.error('Internal error: recursive type reference');
				return macro :Any;
			}
			
			var hxTarget = complexTypeFromTsType(cast typeReference.target, accessContext, enclosingDeclaration);

			var hxTypeArguments = tc.getTypeArguments(typeReference).map(arg -> TPType(complexTypeFromTsType(arg, accessContext, enclosingDeclaration)));
			// replace type parameters with type arguments
			switch hxTarget {
				case TPath(p):
					var argumentCount = hxTypeArguments.length;
					var paramCount = p.params != null ? p.params.length : 0;
					if (paramCount != argumentCount) {
						log.warn('TypeReference has <b>$argumentCount</> arguments but target has <b>$paramCount</> parameters', typeReference);
					}
					p.params = hxTypeArguments;
				default: log.error('Internal error: Expected TPath from TypeReference', typeReference);
			}
			hxTarget;
		}
	}

	function complexTypeFromTupleTypeReference(tupleTypeReference: TupleTypeReference, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		var hxElementTypes = tupleTypeReference.typeArguments.map(t -> complexTypeFromTsType(t, accessContext, enclosingDeclaration));
		return getSupportTupleType(hxElementTypes);
	}

	/**
		While a GenericType could include the full type definition because the return is ComplexType we just return a TPath()
	**/
	function complexTypeFromGenericType(genericType: GenericType & TypeReference, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		// sub-type of GenericType
		return if (genericType.objectFlags & ObjectFlags.Tuple != 0) {
			complexTypeFromTupleType(cast genericType, accessContext, enclosingDeclaration);
		} else {
			complexTypeFromInterfaceType(genericType, accessContext, enclosingDeclaration);
		}
	}

	function complexTypeFromTupleType(tupleType: TupleType, accessContext: SymbolAccess, ?enclosingDeclaration: Node) {
		log.warn('Todo: TupleType', tupleType);
		// need an example where this path is hit
		debug();
		return macro :Array<Any>;
	}

	function complexTypeFromInterfaceType(classOrInterfaceType: InterfaceType, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		return if (classOrInterfaceType.symbol != null) {
			var hxTypePath = getHaxeTypePath(classOrInterfaceType.symbol, accessContext);
			hxTypePath.params = if (classOrInterfaceType.typeParameters != null) {
				classOrInterfaceType.typeParameters.map(t -> TPType(complexTypeFromTypeParameter(t, accessContext, enclosingDeclaration)));
			} else null;
			TPath(hxTypePath);
		} else {
			log.error('Internal error: no symbol for ClassOrInterface type', classOrInterfaceType);
			debug();
			macro :Any;
		}
	}

	function fieldFromSymbol(symbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): Null<Field> {
		var pos = symbol.getPosition();
		var meta = new Array<MetadataEntry>();
		var safeName = symbol.escapedName.toSafeIdent();
		var nameChanged = safeName != symbol.escapedName;

		if (nameChanged) {
			meta.push({name: ':native', pos: pos, params: [HaxeTools.toStringExpr(symbol.escapedName, pos)]});
		}

		if (symbol.flags & SymbolFlags.Optional != 0) {
			meta.push({name: ':optional', pos: pos});
		}

		if (symbol.flags & SymbolFlags.Property != 0) {
			var type = tc.getTypeOfSymbolAtLocation(symbol, symbol.valueDeclaration);
			return {
				name: safeName,
				meta: meta,
				pos: pos,
				kind: FVar(complexTypeFromTsType(type, accessContext, enclosingDeclaration), null),
				doc: getDoc(symbol),
			}
		} else if (symbol.flags & SymbolFlags.Method != 0) {
			// debug();
			return null;
		} else {
			return null;
		}
	}

	/**
		Given a symbol with type-parameter declarations, e.g. `class X<T extends number>`, return the haxe type-parameter declaration equivalent
		Symbol must declare a `Class`, `Interface` or `TypeAlias`
	**/
	function typeParamDeclFromTypeDeclarationSymbol(symbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): Array<TypeParamDecl> {
		var tsTypeParameterDeclarations = new Array<TypeParameterDeclaration>();
		if (symbol.flags & (SymbolFlags.Class | SymbolFlags.Interface | SymbolFlags.TypeAlias) == 0) {
			log.error('Internal error: typeParamDeclFromTypeDeclarationSymbol() unexpected symbol flags; expected Class, Interface or TypeAlias', symbol);
		}

		for (declaration in symbol.declarations) {
			// find the first declaration with more than 0 type parameters
			// here we make the assumption that all declarations have the same type parameters
			
			var declarationTypeParameters = Ts.getEffectiveTypeParameterDeclarations(cast declaration);

			// validate the assumption that all declarations have the same type-parameters
			if (tsTypeParameterDeclarations.length > 0 && declarationTypeParameters.length > 0) {
				if (tsTypeParameterDeclarations.length != declarationTypeParameters.length) {
					log.warn('Symbol declarations have varying number of type-parameters; this is not expected', symbol);
				}
			}

			if (declarationTypeParameters.length > 0) {
				tsTypeParameterDeclarations = declarationTypeParameters;
			}
		}

		return [for (t in tsTypeParameterDeclarations) {
			name: TsSyntaxTools.typeParameterDeclarationName(t),
			constraints: t.constraint != null ? [complexTypeFromTypeNode(t.constraint, accessContext, enclosingDeclaration)] : []
		}];
	}

	/**
		Haxe doesn't support tuple-types so we generate a support type as required
	**/
	function getSupportTupleType(elementTypes: Array<ComplexType>): ComplexType {
		var baseType = HaxeTools.commonType(elementTypes);
		var typePath = {
			pack: ['js', 'lib'],
			name: 'Tuple${elementTypes.length}',
			params: [TPType(baseType)].concat(elementTypes.map(t -> TPType(t)))
		};

		var existingModule = generatedModules.get(getHaxeModuleKey(typePath.pack, typePath.name));

		if (existingModule == null) {
			// generate fields
			var fields = new Array<Field>();

			for (i in 0...elementTypes.length) {
				var name = 'element$i';
				var type = TPath({
					name: 'T$i',
					pack: [],
				});
				var get = 'get_$name';
				var set = 'set_$name';
				var indexExpr = HaxeTools.toIntExpr(i);
				fields = fields.concat((macro class {
					public var $name(get, set): $type;
					inline function $get(): $type return cast this[$indexExpr];
					inline function $set(v: $type): $type return cast this[$indexExpr] = cast v;
				}).fields);
			}
			
			var abstractType = macro :Array<Base>;

			var tupleTypeDefinition: HaxeModule = {
				pack: typePath.pack,
				name: typePath.name,
				kind: TDAbstract(abstractType, [abstractType], [abstractType]),
				params: [{name: 'Base'}].concat([for (i in 0...elementTypes.length) { name: 'T$i', }]),
				fields: fields,
				isExtern: true,
				doc: tool.StringTools.removeIndentation('
					Automatically generated tuple type implementation
					Generated by dts2hx v${Main.dts2hxPackageJson.version}
				').trim(),
				meta: [{name: ':forward', pos: null}, {name: ':forwardStatics', pos: null}],
				pos: null,
				subTypes: [],
				tsSymbol: null,
				tsSymbolAccess: null,
			}

			saveHaxeModule(tupleTypeDefinition);
		}

		return TPath(typePath);
	}

	function getSupportUnionType(types: Array<ComplexType>): ComplexType {
		// here we could generate an advanced union type like we do for tuple but let's save that for another day
		// instead, generate an either lists
		function getEitherUnion(types: Array<ComplexType>): ComplexType {
			return if (types.length == 1) {
				types[0];
			} else {
				TPath({
					name: 'EitherType',
					pack: ['haxe', 'extern'],
					params: [TPType(types[0]), TPType(getEitherUnion(types.slice(1)))],
				});
			}
		}

		return getEitherUnion(types);
	}

	function getGlobalHaxeModule() {
	}

	/**
		Remove @types prefix and convert backslashes to forward slashes
		Given a module name like `@types\lib`, return `lib`
	**/
	function normalizeModuleName(moduleName: String) {
		// make absolute paths into paths relative to the cwd
		if (TsProgramTools.isDirectPathReferenceModule(moduleName)) {
			moduleName = cwdRelativeFilePath(moduleName);
		}

		// replace backslashes with forward slashes to normalize for windows paths
		moduleName.replace('\\', '/');
		var moduleNameParts = moduleName.split('/');
		// remove @types prefix
		if (moduleNameParts[0] == '@types' && moduleNameParts.length > 1) {
			moduleNameParts.shift();
		}
		return moduleNameParts.join('/');
	}

	inline function cwdRelativeFilePath(path: String): String {
		return TsInternal.convertToRelativePath(path, host.getCurrentDirectory(), host.getCanonicalFileName);
	}

	static final defaultNodeBuilderFlags =
		NodeBuilderFlags.NoTruncation | // truncation prevents expanding deeply nested nodes, we always want to expand completely
		NodeBuilderFlags.WriteArrayAsGenericType // Write Array<T> instead T[]
	;

}

typedef ConvertedTypeDefinition = TypeDefinition & {
	tsSymbol: Null<Symbol>,
	tsSymbolAccess: Null<SymbolAccess>,
}

typedef HaxeModule = ConvertedTypeDefinition & {
	subTypes: Array<ConvertedTypeDefinition>,
}

class OnceOnlySymbolQueue {

	final allItemsSeen = new Map<Int, Bool>();
	final currentQueue = new Array<Symbol>();

	public function new() {}

	/**
		Returns `true` if the item has not been seen before (and therefore added to the queue), and `false` if it has been seen before (and therefore ignored)
	**/
	public function tryEnqueue(item: Symbol): Bool {
		var id = item.getId();
		if (!allItemsSeen.exists(id)) {
			allItemsSeen.set(id, true);
			currentQueue.push(item);
			return true;
		}
		return false;
	}

	public function dequeue(): Null<Symbol> {
		return currentQueue.shift();
	}

	public function empty(): Bool {
		return currentQueue.length == 0;
	}

}

/**
	Notes
	-----

	**Documentation Links**
	- [TypeScript AST Viewer](https://ts-ast-viewer.com/)
	- [Architectural-Overview](https://github.com/microsoft/TypeScript/wiki/Architectural-Overview)
	- [Using the type checker](https://github.com/microsoft/TypeScript/wiki/Using-the-Compiler-API#using-the-type-checker)
	- [Language Specification](https://github.com/microsoft/TypeScript/blob/master/doc/spec.md)
	- [Compiler Internals Book](https://basarat.gitbooks.io/typescript/docs/compiler/overview.html)
	- See [src/compiler/utilities.ts](https://github.com/microsoft/TypeScript/blob/d6c05a135840dc3045ec8f3bbec1da5ffabb6593/src/compiler/utilities.ts) for compiler API use examples
	- See [src/compiler/vistorPublic.ts](https://github.com/microsoft/TypeScript/blob/master/src/compiler/visitorPublic.ts) for an example of fully enumerating the AST

	**Declaration**
	Declarations can assign a name to a *type*, *value* and *namespace*. A single name may have be used for all of these

	**Modules** vs **Namespaces** and **"External Modules"**
	- The form `declare module Name` is deprecated and equivalent to `declare namespace Name`. This creates an ambient namespace
	- The correct use of `declare module` is with quotes: `declare module "name"`. This declares an **external** (ES6 module)
	- "In TypeScript, just as in ECMAScript 2015, any file containing a top-level import or export is considered a module. Conversely, a file without any top-level import or export declarations is treated as a script whose contents are available in the global scope (and therefore to modules as well)." https://www.typescriptlang.org/docs/handbook/modules.html
	- https://stackoverflow.com/questions/41932585/what-is-the-difference-between-declare-namespace-and-declare-module
	- See https://stackoverflow.com/questions/32531405/why-does-importing-a-node-module-break-my-internal-typescript-namespaces-in-atom

	**Symbols**
	In the typescript compiler, declarations are grouped into Symbols. A Symbol can have 3 kinds of declaration, as a Type, a Variable/Function and a Module.
	For example, the following declarations are grouped into one symbol with the name 'Example'
	```typescript
	// Symbol Example with 3 declarations
	declare const Example: string;    // Value named X
	declare type Example = number;  // Type named X
	declare namespace Example {     // Namespace named X  
				type Y = string;  
	}

	// Symbol X, with 4 declarations
	declare interface X { field1: number; } // interfaces merge
	declare interface X { field2: number; }
	declare class X { constructor() {} }
	declare namespace X { const field3: number; }
	// use X as a class, interface and value-module
	class Y extends X implements X {
		field1: number = 1;
		field2: number = X.field3;
	}
	```

	See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#23-declarations

	**SymbolAccess**
	The reason we track symbol access rather than always using the sourceFile of the symbol's declaration in is because doing so can lead to runtime errors in some cases
	For example, the following typescript program fails at both runtime and compiletime:

	```typescript
	// import via module root
	import * as THREE from 'three';
	console.log(new THREE.Quaternion(1,2,3,4));
	// import via source file that the symbol is defined in
	import { Quaternion } from './node_modules/three/src/math/Quaternion';
	// ^ import { _Math } from './Math.js'; SyntaxError: Unexpected token {
	console.log(new Quaternion(1,2,3,4));
	```

	The failure is because THREE.Quaternion is accessed from the bundled es5 javascript, whereas the source file Quaternion.js. Moreover, if we have require('three') alongside require('three/src/math/quaternion') then we have two implementations of Quaternion

	On the other hand, it's possible that importing from the individual source files (rather than module) could lead to smaller bundled code because unused code isn't imported.
	I may add an option for this in the future.

	**SymbolFlags**
	https://github.com/microsoft/TypeScript/blob/0ae938b718bae3367bff26369adac1ecef56f212/src/compiler/types.ts#L4007
	```typescript
	enum SymbolFlags {
		None                    = 0,
		FunctionScopedVariable  = 1 << 0,   // Variable (var) or parameter
		BlockScopedVariable     = 1 << 1,   // A block-scoped variable (let or const)
		Property                = 1 << 2,   // Property or enum member
		EnumMember              = 1 << 3,   // Enum member
		Function                = 1 << 4,   // Function
		Class                   = 1 << 5,   // Class
		Interface               = 1 << 6,   // Interface
		ConstEnum               = 1 << 7,   // Const enum
		RegularEnum             = 1 << 8,   // Enum
		ValueModule             = 1 << 9,   // Instantiated module
		NamespaceModule         = 1 << 10,  // Uninstantiated module
		TypeLiteral             = 1 << 11,  // Type Literal or mapped type
		ObjectLiteral           = 1 << 12,  // Object Literal
		Method                  = 1 << 13,  // Method
		Constructor             = 1 << 14,  // Constructor
		GetAccessor             = 1 << 15,  // Get accessor
		SetAccessor             = 1 << 16,  // Set accessor
		Signature               = 1 << 17,  // Call, construct, or index signature
		TypeParameter           = 1 << 18,  // Type parameter
		TypeAlias               = 1 << 19,  // Type alias
		ExportValue             = 1 << 20,  // Exported value marker (see comment in declareModuleMember in binder)
		Alias                   = 1 << 21,  // An alias for another symbol (see comment in isAliasSymbolDeclaration in checker)
		Prototype               = 1 << 22,  // Prototype property (no source representation)
		ExportStar              = 1 << 23,  // Export * declaration
		Optional                = 1 << 24,  // Optional property
		Transient               = 1 << 25,  // Transient symbol (created during type check)
		Assignment              = 1 << 26,  // Assignment treated as declaration (eg `this.prop = 1`)
		ModuleExports           = 1 << 27,  // Symbol for CommonJS `module` of `module.exports`

		Enum = RegularEnum | ConstEnum,
		Variable = FunctionScopedVariable | BlockScopedVariable,
		Value = Variable | Property | EnumMember | ObjectLiteral | Function | Class | Enum | ValueModule | Method | GetAccessor | SetAccessor,
		Type = Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias,
		Namespace = ValueModule | NamespaceModule | Enum,
		Module = ValueModule | NamespaceModule,
		Accessor = GetAccessor | SetAccessor,

		ModuleMember = Variable | Function | Class | Interface | Enum | Module | TypeAlias | Alias,

		ExportHasLocal = Function | Class | Enum | ValueModule,

		BlockScoped = BlockScopedVariable | Class | Enum,

		PropertyOrAccessor = Property | Accessor,

		ClassMember = Method | Accessor | Property,

		// @internal
		ExportSupportsDefaultModifier = Class | Function | Interface,

		// @internal
		ExportDoesNotSupportDefaultModifier = ~ExportSupportsDefaultModifier,

		// @internal
		// The set of things we consider semantically classifiable.  Used to speed up the LS during
		// classification.
		Classifiable = Class | Enum | TypeAlias | Interface | TypeParameter | Module | Alias,

		// @internal
		LateBindingContainer = Class | Interface | TypeLiteral | ObjectLiteral | Function,
	}
	```

	**Alias Symbols**
	An 'alias symbol' is different from a TypeAlias and is created by one of the following declarations:
	```typescript
	import <symbol> = ...
	import <symbol> from ...
	import * as <symbol> from ...
	import { x as <symbol> } from ...
	export { x as <symbol> } from ...
	export * as ns <symbol> from ...
	export = <EntityNameExpression>
	export default <EntityNameExpression>
	module.exports = <EntityNameExpression>
	{<Identifier>}
	{name: <EntityNameExpression>}
	```
	
	For a discussion on the different types of exports and imports
	https://github.com/microsoft/TypeScript/issues/7185#issuecomment-421632656

	**Type Flags**
	```typescript
	export const enum TypeFlags {
        Any             = 1 << 0,
        Unknown         = 1 << 1,
        String          = 1 << 2,
        Number          = 1 << 3,
        Boolean         = 1 << 4,
        Enum            = 1 << 5,
        BigInt          = 1 << 6,
        StringLiteral   = 1 << 7,
        NumberLiteral   = 1 << 8,
        BooleanLiteral  = 1 << 9,
        EnumLiteral     = 1 << 10,  // Always combined with StringLiteral, NumberLiteral, or Union
        BigIntLiteral   = 1 << 11,
        ESSymbol        = 1 << 12,  // Type of symbol primitive introduced in ES6
        UniqueESSymbol  = 1 << 13,  // unique symbol
        Void            = 1 << 14,
        Undefined       = 1 << 15,
        Null            = 1 << 16,
        Never           = 1 << 17,  // Never type
        TypeParameter   = 1 << 18,  // Type parameter
        Object          = 1 << 19,  // Object type
        Union           = 1 << 20,  // Union (T | U)
        Intersection    = 1 << 21,  // Intersection (T & U)
        Index           = 1 << 22,  // keyof T
        IndexedAccess   = 1 << 23,  // T[K]
        Conditional     = 1 << 24,  // T extends U ? X : Y
        Substitution    = 1 << 25,  // Type parameter substitution
        NonPrimitive    = 1 << 26,  // intrinsic object type

        // @internal
        AnyOrUnknown = Any | Unknown,
        // @internal
        Nullable = Undefined | Null,
        Literal = StringLiteral | NumberLiteral | BigIntLiteral | BooleanLiteral,
        Unit = Literal | UniqueESSymbol | Nullable,
        StringOrNumberLiteral = StringLiteral | NumberLiteral,
        // @internal
        StringOrNumberLiteralOrUnique = StringLiteral | NumberLiteral | UniqueESSymbol,
        // @internal
        DefinitelyFalsy = StringLiteral | NumberLiteral | BigIntLiteral | BooleanLiteral | Void | Undefined | Null,
        PossiblyFalsy = DefinitelyFalsy | String | Number | BigInt | Boolean,
        // @internal
        Intrinsic = Any | Unknown | String | Number | BigInt | Boolean | BooleanLiteral | ESSymbol | Void | Undefined | Null | Never | NonPrimitive,
        // @internal
        Primitive = String | Number | BigInt | Boolean | Enum | EnumLiteral | ESSymbol | Void | Undefined | Null | Literal | UniqueESSymbol,
        StringLike = String | StringLiteral,
        NumberLike = Number | NumberLiteral | Enum,
        BigIntLike = BigInt | BigIntLiteral,
        BooleanLike = Boolean | BooleanLiteral,
        EnumLike = Enum | EnumLiteral,
        ESSymbolLike = ESSymbol | UniqueESSymbol,
        VoidLike = Void | Undefined,
        // @internal
        DisjointDomains = NonPrimitive | StringLike | NumberLike | BigIntLike | BooleanLike | ESSymbolLike | VoidLike | Null,
        UnionOrIntersection = Union | Intersection,
        StructuredType = Object | Union | Intersection,
        TypeVariable = TypeParameter | IndexedAccess,
        InstantiableNonPrimitive = TypeVariable | Conditional | Substitution,
        InstantiablePrimitive = Index,
        Instantiable = InstantiableNonPrimitive | InstantiablePrimitive,
        StructuredOrInstantiable = StructuredType | Instantiable,
        // @internal
        ObjectFlagsType = Any | Nullable | Never | Object | Union | Intersection,
        // @internal
        Simplifiable = IndexedAccess | Conditional,
        // @internal
        Substructure = Object | Union | Intersection | Index | IndexedAccess | Conditional | Substitution,
        // 'Narrowable' types are types where narrowing actually narrows.
        // This *should* be every type other than null, undefined, void, and never
        Narrowable = Any | Unknown | StructuredOrInstantiable | StringLike | NumberLike | BigIntLike | BooleanLike | ESSymbol | UniqueESSymbol | NonPrimitive,
        NotUnionOrUnit = Any | Unknown | ESSymbol | Object | NonPrimitive,
        // @internal
        NotPrimitiveUnion = Any | Unknown | Enum | Void | Never | StructuredOrInstantiable,
        // The following flags are aggregated during union and intersection type construction
        // @internal
        IncludesMask = Any | Unknown | Primitive | Never | Object | Union | Intersection | NonPrimitive,
        // The following flags are used for different purposes during union and intersection type construction
        // @internal
        IncludesStructuredOrInstantiable = TypeParameter,
        // @internal
        IncludesNonWideningType = Index,
        // @internal
        IncludesWildcard = IndexedAccess,
        // @internal
        IncludesEmptyObject = Conditional,
    }
	```

	**TypeNode Kinds**
	- `AnyKeyword` | `UnknownKeyword` | `NumberKeyword` | `BigIntKeyword` | `ObjectKeyword` | `BooleanKeyword` | `StringKeyword` | `SymbolKeyword` | `ThisKeyword` | `VoidKeyword` | `UndefinedKeyword` | `NullKeyword` | `NeverKeyword`
	- `TypeReference`
	- `FunctionType`
	- `ConstructorType`
	- `ImportType`
	- `ThisType`
	- `TypePredicate`
	- `TypeQuery`
	- `TypeLiteral`
	- `ArrayType`
	- `TupleType`
	- `OptionalType`
	- `RestType`
	- `UnionType`
	- `IntersectionType`
	- `ConditionalType`
	- `InferType`
	- `ParenthesizedType`
	- `TypeOperator`
	- `IndexedAccessType`
	- `MappedType`
	- `LiteralType`
	- `StringLiteral`
	- `TrueKeyword`
	- `FalseKeyword`
**/