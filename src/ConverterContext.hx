import ds.OnlyOnceSymbolQueue;
import ds.Set;
import haxe.macro.Expr;
import tool.FileTools;
import tool.TsSyntaxTools;
import typescript.Ts;
import typescript.ts.CompilerHost;
import typescript.ts.CompilerOptions;
import typescript.ts.Declaration;
import typescript.ts.GenericType;
import typescript.ts.InterfaceType;
import typescript.ts.IntersectionType;
import typescript.ts.Modifier;
import typescript.ts.ModifiersArray;
import typescript.ts.Node;
import typescript.ts.NodeBuilderFlags;
import typescript.ts.NumberLiteralType;
import typescript.ts.ObjectFlags;
import typescript.ts.ObjectType;
import typescript.ts.PackageId;
import typescript.ts.ParameterDeclaration;
import typescript.ts.Program;
import typescript.ts.ResolvedModuleFull;
import typescript.ts.Signature;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.SyntaxKind;
import typescript.ts.TupleType;
import typescript.ts.TupleTypeReference;
import typescript.ts.TypeAliasDeclaration;
import typescript.ts.TypeChecker;
import typescript.ts.TypeFlags;
import typescript.ts.TypeFormatFlags;
import typescript.ts.TypeNode;
import typescript.ts.TypeParameter;
import typescript.ts.TypeParameterDeclaration;
import typescript.ts.TypeReference;
import typescript.ts.UnionType;

using Lambda;
using StringTools;
using SupportTypes;
using TsInternal;
using tool.HaxeTools;
using tool.SymbolAccessTools;
using tool.TsProgramTools;
using tool.TsSymbolTools;
using tool.TsTypeTools;

private typedef TsType = typescript.ts.Type;

@:expose
@:nullSafety
class ConverterContext {

	/**
		Normalized input module id (without prefix @types/).
		This is the value to use in `require()` to load the module at runtime.
		It may be a path, for example `./modules/example`
	**/
	public final normalizedInputModuleName: String;
	
	public final inputModule: ResolvedModuleFull;

	/**
		If the inputModule is part of a node package, this will be set to the packageId.
		For example, in three.js, there are a number of types that are not accessible from `require('three')`:
		If inputModule is `three/examples/jsm/controls/OrbitControls`, packageId will be `three`
	**/
	public final packageName: Null<String>;
	
	/**
		Map of package-paths to HaxeModules
	**/
	public final generatedModules = new Map<String, HaxeModule>();

	/**
		An array of normalized module ids (paths or names) that this module depends on.
		These dependencies will also need to be converted
	**/
	public final moduleDependencies: haxe.ds.ReadOnlyArray<{ normalizedModuleName: String, packageInfo: PackageId }>;

	public final tc: TypeChecker;
	public final host: CompilerHost;
	public final program: Program;
	public final moduleSearchPath: String;

	/**
		Symbol access map is filled during an initial pass over the program.
		The access path for key-symbols such as types, are stored so we can retrieve them later when we have a type-reference
	**/
	public final symbolAccessMap: SymbolAccessMap;

	/**
		Using the symbol access map, a type-path is generated for every symbol in the program (including symbols in other modules and in the lib files).
		This is done upfront to ensure deterministic handling of module name deduplication
		If getting a reference to a symbol, use `getReferencedHaxeTypePath` instead
	**/
	final haxeTypePathMap: HaxeTypePathMap;

	/**
		Unique list of symbols to convert
		When a type is referenced during conversion, if it is inaccessible (and therefore not converted in the first pass), add it to this queue to be converted
	**/
	final declarationSymbolQueue = new OnceOnlySymbolQueue();

	/**
		To aid post processing, when a symbol is popped `declarationSymbolQueue` after converting is it added to this list
	**/
	final processedDeclarationSymbols = new Array<Symbol>();

	final locationComments: Bool;

	// settings
	final shortenTypePaths = true;
	final enableTypeParameterConstraints: Bool;
	final typeStackLimit = 25;
	final anyUnionCollapse = false; // `any | string` -> `any`
	final unionizedFunctionTypes = true; // `(?b) => C` -> `()->C | (b)->C`

	// experimental settings
	final allowIntersectionRasterization: Bool;
	/**
		When true, symbols defined externally can be included in the output module.
		This is a workaround until we have a single compilation context for all dependencies
	**/
	final queueExternalSymbols: Bool; 

	public function new(
		inputModuleName: String,
		moduleSearchPath: String,
		compilerOptions: CompilerOptions,
		stdLibMap: Null<typemap.TypeMap>,
		options: {
			locationComments: Bool,
			allowIntersectionRasterization: Bool,
			queueExternalSymbols:  Bool,
			enableTypeParameterConstraints: Bool,
		}
	) {
		// we make the moduleSearchPath absolute to work around an issue in resolveModuleName
		moduleSearchPath = sys.FileSystem.absolutePath(moduleSearchPath);
		this.moduleSearchPath = moduleSearchPath;
		this.host = Ts.createCompilerHost(compilerOptions);
		this.locationComments = options.locationComments;
		this.allowIntersectionRasterization = options.allowIntersectionRasterization;
		this.queueExternalSymbols = options.queueExternalSymbols;
		this.enableTypeParameterConstraints = options.enableTypeParameterConstraints;

		// this will be used as the argument to require()
		this.normalizedInputModuleName = inline inputModuleName.normalizeModuleName();

		Console.log('Converting module <b>$inputModuleName</b>');
		Log.log('moduleSearchPath: <b>"${this.moduleSearchPath}"</>');

		// resolve input module (as entry-point)
		var result = Ts.resolveModuleName(inputModuleName, moduleSearchPath + '/.', compilerOptions, host);
		if (result.resolvedModule == null) {
			var failedLookupLocations: Array<String> = Reflect.field(result, 'failedLookupLocations'); // @internal field
			Log.error('Failed to find typescript for module <b>"${inputModuleName}"</b>. Searched the following paths:<dim>\n\t${failedLookupLocations.join('\n\t')}</>');
			throw 'Input module not resolved';
		}
		inputModule = result.resolvedModule;

		// if the input module is part of a package, resolve the package
		var packageRootModule = if (inputModule.packageId != null) {
			this.packageName = inline inputModule.packageId.name.normalizeModuleName();

			if (inputModule.packageId.name != inputModuleName) {
				var result = Ts.resolveModuleName(this.packageName, moduleSearchPath + '/.', compilerOptions, host);
				if (result.resolvedModule == null) {
					var failedLookupLocations: Array<String> = Reflect.field(result, 'failedLookupLocations'); // @internal field
					Log.error('Root package for <b>$inputModuleName</> was <b>${this.packageName}</> but this module could not be resolved. Searched the following paths:<dim>\n\t${failedLookupLocations.join('\n\t')}</>');
				}
				result.resolvedModule;
			} else {
				inputModule;
			}
		} else null;
		
		// create program
		var inputSourcePaths = [inputModule.resolvedFileName];
		if (packageRootModule != null) {
			inputSourcePaths.unshift(packageRootModule.resolvedFileName);
		}
		this.program = Ts.createProgram(inputSourcePaths, compilerOptions, host);
		this.tc = program.getTypeChecker();

		Log.diagnostics(program.getAllDiagnostics());

		var entryPointSourceFile = program.getSourceFile(inputModule.resolvedFileName);
		if (entryPointSourceFile == null) throw 'Types not found – try installing external types with:\n\t<bg_black,white>npm install @types/$inputModuleName</>';

		// these are source files that belong directly to this module
		// @! maybe we could search the package directory and add all discovered typescript files here
		var inputModuleSourceFiles = new Array();
		program.walkReferencedSourceFiles(entryPointSourceFile, host, true, s -> inputModuleSourceFiles.push(s));

		// by default, the .moduleName field of source files is not assigned
		// this method explores each source file and gives it a .moduleName field that would (if the source file exports symbols) be used in require()
		program.assignModuleNames(moduleSearchPath, host);

		// determine external dependencies:
		moduleDependencies = program.getDependencies(inputModuleSourceFiles, normalizedInputModuleName, host);

		// populate symbol access map
		symbolAccessMap = new SymbolAccessMap(program);

		// generate a haxe type-path for all type or module-class (ValueModule) symbols in the program
		haxeTypePathMap = new HaxeTypePathMap(
			packageName != null ? packageName : normalizedInputModuleName,
			program,
			symbolAccessMap,
			stdLibMap
		);

		// convert symbols, starting from entry-point file
		program.walkReferencedSourceFiles(entryPointSourceFile, host, true, (sourceFile) -> {
			for (symbol in program.getExposedSymbolsOfSourceFile(sourceFile)) {
				TsSymbolTools.walkDeclarationSymbols(tc, symbol, (symbol, access) -> {
					declarationSymbolQueue.tryEnqueue(symbol);
				});
			}
		});

		// convert declaration symbols (types and module variables)
		// declarationSymbolQueue grows as types are referenced during conversion
		while (!declarationSymbolQueue.empty()) {
			var symbol: Symbol = cast declarationSymbolQueue.dequeue();

			for (access in symbolAccessMap.getAccess(symbol)) {
				// Log.log(access.toString(), symbol);

				// symbol can be both a haxe-module source and a global field if it has multiple declarations
				if (isHaxeModuleSource(tc, symbol, access)) {
					generateHaxeModulesFromSymbol(symbol, access);
				}

				if (isGlobalField(tc, symbol, access)) {
					var globalModule = this.getGlobalModuleForFieldSymbol(symbol, access);
					var field = fieldFromSymbol(symbol.name, symbol, symbol, Global([]), null);
					field.enableAccess(AStatic);
					globalModule.fields.push(field);
				}
				
				// we will also get module variable symbols here but these are handled in `generateHaxeModulesFromSymbol` instead
			}

			processedDeclarationSymbols.push(symbol);
		}

		// special case pattern detection and field name clash resolution
		PostProcess.run(this);
	}

	/**
		Returns true if the symbol corresponds to a module in haxe
	**/
	static public function isHaxeModuleSource(tc: TypeChecker, symbol: Symbol, access: SymbolAccess) {
		return 
			symbol.flags & (SymbolFlags.Type | SymbolFlags.ValueModule) != 0 ||
			tc.isConstructorTypeVariableSymbol(symbol) ||
			(symbol.flags & (SymbolFlags.Function | SymbolFlags.Variable) != 0 && access.match(ExportModule(_, _, [])));
	}

	/**
		Some symbols are not natively supported in haxe, for example, variables outside classes

		These symbols are implemented as classes in haxe
	**/
	static public function requiresHxClass(tc: TypeChecker, symbol: Symbol) {
		return (
			symbol.flags & (SymbolFlags.Class | SymbolFlags.ValueModule | SymbolFlags.Value) != 0 ||
			tc.isConstructorTypeVariableSymbol(symbol)
		);
	}

	/**
		In TypeScript, a single named type (symbol) can have multiple definitions, for example, as a class and an interface.
		Because the haxe type-system is more restrictive, there are contexts where we want the interface version of a type, and others when we want the class version.
		
		For example, we want the class version in `class extends`, and the interface-structure for intersection
	**/
	static public function requiresAdditionalStructureType(tc: TypeChecker, symbol: Symbol) {
		// we need an additional interface-structure type if the symbol is declared as an interface and as a class-like type
		return (symbol.flags & SymbolFlags.Interface != 0) && requiresHxClass(tc, symbol);
	}

	static public function isGlobalField(tc: TypeChecker, symbol: Symbol, access: SymbolAccess): Bool {
		return switch access {
			case Global([_])
				if (
					symbol.flags & (SymbolFlags.Variable | SymbolFlags.Function) != 0 &&
					!tc.isConstructorTypeVariableSymbol(symbol)
				): true;
			default: false;
		}
	}

	/**
		Returns a TypePath for a given symbol.
		The symbol must have flags Type or ValueModule.
		This also queues this symbol's type to be converted if it isn't already
	**/
	public function getReferencedHaxeTypePath(symbol: Symbol, moduleSymbol: Symbol, accessContext: SymbolAccess, preferInterfaceStructure: Bool): TypePath {
		var hxTypePath = haxeTypePathMap.getTypePath(symbol, accessContext, preferInterfaceStructure);

		// should we queue this symbol for conversion?
		if (!hxTypePath.isExistingStdLibType) {
			if (symbol.getDeclarationsArray().exists(d -> d.getSourceFile().hasNoDefaultLib)) {
				declarationSymbolQueue.tryEnqueue(symbol);
			} else {
				if (!declarationSymbolQueue.has(symbol)) {
					/**
						Here we're referencing a symbol that's not currently included in the conversion queue
						this might be:
							- A symbol of an external library (in which case, we don't need to convert it)
							- An undiscovered symbol declared within the input module. I'm undecided on whether or not this is an error yet.
					**/

					// check if symbol is declared within this module
					var declaredInModules = symbol.getParentModuleNames();

					var declaredWithinInputModule = declaredInModules.exists(name -> name == normalizedInputModuleName);
					
					if (declaredWithinInputModule) {
						Log.log('Discovered symbol through reference', symbol);
						declarationSymbolQueue.tryEnqueue(symbol);
					} else if (queueExternalSymbols) {
						Log.log('Queuing external symbol', symbol);
						declarationSymbolQueue.tryEnqueue(symbol);
					}
				}
			}
		}

		// if accessContext symbol has the same package as the target symbol, we can shorten the type path by removing the pack
		// we don't shorten std lib types because they are not generated
		var noPack = if (shortenTypePaths && !hxTypePath.isExistingStdLibType) {
			if (moduleSymbol != null) {
				var contextTypePath = haxeTypePathMap.getTypePath(moduleSymbol, accessContext, false);
				contextTypePath.pack.join('.') == hxTypePath.pack.join('.'); // same package context
			} else false;
		} else false;
		return {
			name: hxTypePath.moduleName,
			sub: hxTypePath.moduleName != hxTypePath.name ? hxTypePath.name : null,
			pack: noPack ? [] : hxTypePath.pack,
		}
	}

	public function getGeneratedModule(typePath: TypePath) {
		return generatedModules.get(getHaxeModuleKey(typePath.pack, typePath.name));
	}

	/**
		Symbol+access must be a haxe-module source symbol (see `isHaxeModuleSource()`)
	**/
	function generateHaxeModulesFromSymbol(symbol: Symbol, access: SymbolAccess) {
		// Log.log('generateHaxeModulesFromSymbol() <yellow>${access.toString()}</>', symbol);
		var pos = TsSymbolTools.getPosition(symbol);

		var isConstructorTypeVariable = tc.isConstructorTypeVariableSymbol(symbol);
		var isValueModuleOnlySymbol = symbol.flags & SymbolFlags.ValueModule != 0 && symbol.flags & SymbolFlags.Type == 0 && !isConstructorTypeVariable; // (allowed to be a variable symbol)

		// the fundamental module of a symbol is the main representation of it in haxe
		// some symbols haxe _two_ representations in haxe, for example a class + interface symbol will have a class and interface structure in haxe
		var fundamentalTypePath = haxeTypePathMap.getTypePath(symbol, access, false);

		// do not generate a module for std-lib types (some std-lib types might have an interface-structure however)
		if (!fundamentalTypePath.isExistingStdLibType) {
			var hxModule: HaxeModule = if (symbol.flags & SymbolFlags.Enum != 0) {
				// a ConstEnum does not exist at runtime
				var isCompileTimeEnum = symbol.flags & SymbolFlags.ConstEnum != 0;

				var hxEnumType = complexTypeBaseOfEnumSymbol(symbol);

				var enumMembers = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.EnumMember != 0);
				var hxEnumFields = [for (enumMember in enumMembers) fieldFromSymbol(enumMember.name, enumMember, symbol, access, null)];

				{
					pack: fundamentalTypePath.pack,
					name: fundamentalTypePath.name,
					kind: TDAbstract(hxEnumType, [hxEnumType], [hxEnumType]),
					params: [],
					isExtern: true,
					fields: hxEnumFields,
					doc: getDoc(symbol),
					meta: (isCompileTimeEnum ? [] : [access.toAccessMetadata()]).concat([{name: ':enum', pos: pos}]),
					pos: pos,
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}
			} else if (symbol.flags & SymbolFlags.TypeAlias != 0) {
				var typeAliasDeclaration: Null<TypeAliasDeclaration> = cast symbol.getDeclarationsArray().filter(node -> node.kind == SyntaxKind.TypeAliasDeclaration)[0];
				if (typeAliasDeclaration == null) {
					Log.warn('TypeAlias symbol did not have a TypeAliasDeclaration', symbol);
				}

				if (symbol.name == 'AsyncComponent') debug();

				var tsType = tc.getDeclaredTypeOfSymbol(symbol);
				var hxAliasType = complexTypeFromTsType(tsType, symbol, access, typeAliasDeclaration, symbol, false);
				var forceAbstractKind = symbol.flags & SymbolFlags.ValueModule != 0 || isConstructorTypeVariable;

				// if this symbol is also a ValueModule then it needs to have fields
				// to enable this, we create a pseudo typedef with an abstract
				var hxTypeDef: HaxeModule = if (forceAbstractKind) {
					pack: fundamentalTypePath.pack,
					name: fundamentalTypePath.name,
					fields: [],
					kind: TDAbstract(hxAliasType, [hxAliasType], [hxAliasType]),
					params: typeParamDeclFromTypeDeclarationSymbol(symbol, access, typeAliasDeclaration), // is there a case where an enum can have a TypeParameter?
					doc: getDoc(symbol),
					isExtern: true,
					meta: [access.toAccessMetadata(), {name: ':forward', pos: pos}, {name: ':forwardStatics', pos: pos}],
					pos: pos,
					tsSymbol: symbol,
					tsSymbolAccess: access,
				} else {
					pack: fundamentalTypePath.pack,
					name: fundamentalTypePath.name,
					fields: [],
					kind: TDAlias(hxAliasType),
					params: typeParamDeclFromTypeDeclarationSymbol(symbol, access, typeAliasDeclaration),
					doc: getDoc(symbol),
					pos: pos,
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}
				hxTypeDef;
			} else if (requiresHxClass(tc, symbol)) {
				// Class | ValueModule | ConstructorTypeVariable

				// (null if not a class symbol)
				// if class + function, symbol.valueDeclaration is the function declaration
				var classDeclaration = symbol.declarations.find(d -> d.kind == SyntaxKind.ClassDeclaration);

				var declaration = if (classDeclaration != null) {
					classDeclaration;
				} else if (symbol.valueDeclaration != null) {
					symbol.valueDeclaration;
				} else {
					Log.error('Expected valueDeclaration for a symbol that requires a class in haxe', symbol);
					null;
				}

				var declaredType = tc.getDeclaredTypeOfSymbol(symbol);
				var meta = [access.toAccessMetadata()];
				var superClassPath: Null<TypePath> = null;

				if (isValueModuleOnlySymbol) {
					meta.push({name: 'valueModuleOnly', pos: pos});
				}

				var callSignatures = tc.getSignaturesOfType(declaredType, Call);
				var indexSignatures = tc.getIndexSignaturesOfType(declaredType);
				var classMembers = tc.getPropertiesOfType(declaredType).filter(s -> s.isAccessibleField());

				var classSuperType = tc.getClassExtendsType(symbol);
				if (classSuperType != null) {
					var hxSuperType = complexTypeFromObjectType(cast classSuperType, symbol, access, false, declaration);

					superClassPath = switch hxSuperType {
						case TPath(p) if (!isHxAny(hxSuperType)): p;
						default:
							Log.warn('Class super-type did not translate to a class-path (instead it was: <b>${new Printer().printComplexType(hxSuperType)}</>)', symbol);
							null;
					}

					// remove redefined class **variable** fields (function redefinitions are allowed in haxe)
					var classSuperMembers = tc.getPropertiesOfType(classSuperType).filter(s -> s.isAccessibleField());
					classMembers = classMembers.filter(m -> {
						var classSuperMatch = classSuperMembers.find(sm -> sm.name == m.name);
						return if (classSuperMatch != null) {
							if (m.flags & SymbolFlags.Method != 0) {
								// methods _can_ be defined, although we should only redefine if the type changed
								// compare types by comparing strings
								var format: TypeFormatFlags = TypeFormatFlags.NoTruncation;
								tc.typeToString(getTsTypeOfField(m), m.valueDeclaration, format) != tc.typeToString(getTsTypeOfField(classSuperMatch), classSuperMatch.valueDeclaration, format);
							} else {
								// variable fields cannot be redefined in haxe
								false;
							}
						} else {
							// field is not redefined from super
							true;
						}
					});
				}

				var fields = generateTypeFields(
					symbol,
					access,
					declaration,
					symbol.getConstructorSignatures(tc),
					callSignatures,
					indexSignatures,
					classMembers,
					fundamentalTypePath.name
				);

				if (classDeclaration != null) {
					// add default constructor
					if (!fields.exists(f -> f.name == 'new')) {
						fields.unshift((macro class { function new(); }).fields[0]);
					}
				}

				// although we do a final pass resolving name collisions, we do it manually here so that if the fields are cloned into an interface structure
				// they have the same collision resolution applied
				fields.resolveNameCollisions();

				{
					pack: fundamentalTypePath.pack,
					name: fundamentalTypePath.name,
					fields: fields,
					kind: TDClass(superClassPath, [], false, false),
					params: typeParamDeclFromTypeDeclarationSymbol(symbol, access, declaration),
					isExtern: true,
					doc: getDoc(symbol),
					meta: meta,
					pos: pos,
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}
			} else if (symbol.flags & SymbolFlags.Interface != 0) {
				// interface-only symbol
				createInterfaceModule(symbol, access, false);
			} else {
				Log.error('generateHaxeModulesFromSymbol(): Unhandled symbol, no flags were recognized', symbol);
				{
					pack: fundamentalTypePath.pack,
					name: fundamentalTypePath.name,
					fields: [],
					kind: TDAbstract(macro :Dynamic, [macro :Dynamic], [macro :Dynamic]),
					doc: getDoc(symbol),
					isExtern: true,
					pos: pos,
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}
			}

			/**
				**Add ConstructType fields**

				ConstructorType + Interface
					-> Separate interface-structure, use class for constructor type, add static fields and new
				ConstructorType + Type-Alias
					-> Convert to abstract, add static fields and new
				ConstructorType + ValueModule
					-> add static fields and new

				ConstructorType + Class => Not allowed
				ConstructorType + Enum => Not allowed
			**/
			if (isConstructorTypeVariable) {
				var constructorTypeDeclaration = symbol.valueDeclaration;
				if (constructorTypeDeclaration != null) {
					var constructorType = tc.getTypeOfSymbolAtLocation(symbol, constructorTypeDeclaration);

					var constructSignatures = tc.getSignaturesOfType(constructorType, Construct);
					var callSignatures = tc.getSignaturesOfType(constructorType, Call);
					var indexSignatures = tc.getIndexSignaturesOfType(constructorType);
					var fields = tc.getPropertiesOfType(constructorType).filter(s -> s.isAccessibleField());

					if (indexSignatures.length > 0) {
						Log.warn('Index signatures are not yet supported', symbol);
					}

					// given constructor type cannot merge with class, we don't expect an existing new signature
					// (and constructor type new signature takes precedence, not overload, over a class new signature if merged with a type-alias to class)
					var newField = newFieldFromSignatures(constructSignatures, symbol, access, constructorTypeDeclaration);
					hxModule.fields.unshift(newField);

					if (callSignatures.length > 0) {
						var callField = functionFieldFromCallSignatures(selfCallFunctionName, callSignatures, symbol, access, constructorTypeDeclaration);
						callField.enableAccess(AStatic);
						hxModule.fields.push(callField);
					}

					// constructor type fields become class statics
					for (field in fields) {
						var hxField = fieldFromSymbol(field.name, field, symbol, access, constructorTypeDeclaration);
						hxField.enableAccess(AStatic);
						hxModule.fields.push(hxField);
					}
				} else {
					Log.error('A symbol with a constructor type variable declaration should have a valueDeclaration', symbol);
				}
			}

			// add static class members
			for (staticClassMember in symbol.getExports().filter(s -> s.flags & SymbolFlags.ClassMember != 0 && s.isAccessibleField())) {
				var field = fieldFromSymbol(staticClassMember.name, staticClassMember, symbol, access, null);
				field.enableAccess(AStatic);
				hxModule.fields.push(field);
			}

			// add module fields
			if (symbol.flags & SymbolFlags.Module != 0) {
				var moduleMemberFields = tc.getExportsOfModule(symbol).filter(s ->
					s.flags & SymbolFlags.ModuleMember != 0 && (s.isAccessibleField() || s.flags & SymbolFlags.Alias != 0)
				);
				for (moduleMember in moduleMemberFields) {
					// field name before alias resolution (e.g. `default`)
					var nativeFieldName = moduleMember.name;

					if (moduleMember.flags & SymbolFlags.Alias != 0) {
						moduleMember = tc.getAliasedSymbol(moduleMember);
						if (!moduleMember.isAccessibleField()) continue;
					}

					// skip constructor type variables because these have been converted into classes
					if (tc.isConstructorTypeVariableSymbol(moduleMember)) continue;

					var field = fieldFromSymbol(nativeFieldName, moduleMember, symbol, access, null);
					field.enableAccess(AStatic);
					hxModule.fields.push(field);
				}
			}

			saveHaxeModule(hxModule);
		}

		// add special interface-structure module for the symbol if required
		if (requiresAdditionalStructureType(tc, symbol)) {
			saveHaxeModule(createInterfaceModule(symbol, access, true));
		}
	}

	function createInterfaceModule(symbol: Symbol, access: SymbolAccess, preferInterfaceStructure: Bool): HaxeModule {
		var pos = TsSymbolTools.getPosition(symbol);
		var typePath = haxeTypePathMap.getTypePath(symbol, access, preferInterfaceStructure);
		// there can be _multiple_ interface declarations, we just use the first
		// the declaration is used to help guide type conversion, but it's not critical
		var declaration = symbol.declarations.find(d -> d.kind == SyntaxKind.InterfaceDeclaration);
		var declaredType = tc.getDeclaredTypeOfSymbol(symbol);
		var declaredMembers = tc.getPropertiesOfType(declaredType).filter(s -> s.isAccessibleField());

		var callSignatures = tc.getSignaturesOfType(declaredType, Call);

		var kind = if (callSignatures.length > 0 && declaredMembers.length == 0 && preferInterfaceStructure == false) {
			// handle special case of function type { (args): T }
			// or if multiple signatures: { (args): T; (args2): T2 }, return a union of function types
			var functionSignature = SupportTypes.getUnionType(this, callSignatures.map(callSignature -> complexTypeFromCallSignature(callSignature, symbol, access, declaration)));
			TDAlias(functionSignature);
		} else {
			/*		
			// replace redefined class **variable** members with their super-type members
			var classSuperType = tc.getClassExtendsType(symbol);
			if (classSuperType != null) {
				var classSuperMembers = tc.getPropertiesOfType(classSuperType).filter(s -> s.isAccessibleField());
				// when extending a class, because we cannot redefine fields in haxe, we use the super-class's field type instead
				declaredMembers = declaredMembers.map(m -> {
					return if (m.flags & SymbolFlags.PropertyOrAccessor != 0) {
						// @! we should find the first definition
						var matchingClassSuperMember = classSuperMembers.find(sm -> sm.name == m.name);
						var ret:Symbol = (matchingClassSuperMember != null ? matchingClassSuperMember : m);
						ret;
					} else m;
				});
			}
			*/

			var fields = generateTypeFields(
				symbol,
				access,
				declaration,
				[],
				callSignatures,
				tc.getIndexSignaturesOfType(declaredType),
				declaredMembers,
				typePath.name
			);

			// remove disallowed accessors, since this is a structure type in haxe, the only allowed accessor is `final`
			for (field in fields) {
				if (field.access != null) field.access = field.access.filter(a -> switch a {
					case AFinal, ADynamic: true;
					default: false;
				});
			};

			// (we resolve field collisions here because the later pass doesn't alias to anon fields)
			fields.resolveNameCollisions();


			TDAlias(TAnonymous(fields));
		}

		return {
			pack: typePath.pack,
			name: typePath.name,
			fields: [],
			kind: kind,
			params: typeParamDeclFromTypeDeclarationSymbol(symbol, access, declaration),
			isExtern: false,
			doc: getDoc(symbol),
			meta: [],
			pos: pos,
			tsSymbol: symbol,
			tsSymbolAccess: access,
		};
	}

	function generateTypeFields(
		symbol: Symbol,
		access: SymbolAccess,
		declaration: Null<Declaration>,
		constructorSignatures: Array<Signature>,
		callSignatures: Array<Signature>,
		indexSignatures: Array<Signature>,
		classMembers: Array<Symbol>,
		haxeClassName: String
	) {
		var fields = new Array<Field>();

		if (constructorSignatures.length > 0) {
			fields.push(newFieldFromSignatures(constructorSignatures, symbol, access, declaration));
		}

		if (callSignatures.length > 0) {
			// Log.log('\t<red>callSignatures <b>${callSignatures.length}</></>', callSignatures[0].declaration);
			fields.push(functionFieldFromCallSignatures(selfCallFunctionName, callSignatures, symbol, access, declaration));
		}

		if (symbol.flags & SymbolFlags.Function != 0) {
			// type symbol is a function, make a @:selfCall field
			var tsType = getTsTypeOfField(symbol);
			var signatures = tc.getSignaturesOfType(tc.getNonNullableType(tsType), Call);
			var selfCallStatic = functionFieldFromCallSignatures('call', signatures, symbol, access, declaration);
			selfCallStatic.enableAccess(AStatic);
			fields.push(selfCallStatic);
		} else if (
			symbol.flags & SymbolFlags.Variable != 0 &&
			access.match(ExportModule(_, _, [])) // specifically `export = variable` access
		) {
			// `export = variable`, transform to class with a static field called 'value'
			// extern class Module {
			// 	static var value(get, never): Int;
			// 	static inline function get_value():Int return cast Module;
			// }

			// this is the variable equivalent of @:selfCall
			var field = fieldFromSymbol('value', symbol, symbol, access, declaration);

			switch field.kind {
				case FVar(type, _), FProp(_, _, type, _):
					field.kind = FProp('get', 'never', type);
					field.access = [AStatic];
					fields.push(field);

					// add value getter implementation
					fields.push((macro class {
						static inline function get_value():$type return cast $i{haxeClassName};
					}).fields[0]);

				case FFun(f):
					// it's possible for the variable to have a function type, in which case we make it a regular selfCall (same as above)
					var tsType = getTsTypeOfField(symbol);
					var signatures = tc.getSignaturesOfType(tc.getNonNullableType(tsType), Call);
					var selfCallStatic = functionFieldFromCallSignatures('call', signatures, symbol, access, declaration);
					selfCallStatic.enableAccess(AStatic);
					fields.push(selfCallStatic);
			}
		}

		if (indexSignatures.length > 0) {
			// this is different from a _constructor_ declaration
			Log.warn('Index signatures are not yet supported', symbol);
		}

		// class-fields
		for (classMember in classMembers) {
			// Log.log('\t<green>classMember</>', classMember);
			fields.push(fieldFromSymbol(classMember.name, classMember, symbol, access, declaration));
		}
		
		return fields;
	}

	/**
		Return true if the type will be represented as a structure in haxe
		@! needs review
	**/
	@:pure function isTypeStructureInHaxe(type: TsType, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): Bool {
		if (type.flags & TypeFlags.Object != 0) {
			// check the type can be converted
			if (isHxAny(complexTypeFromTsType(type, moduleSymbol, accessContext, enclosingDeclaration))) {
				return false;
			}

			var objectType: ObjectType = cast type;
			var isAnonType = objectType.objectFlags & ObjectFlags.Anonymous != 0;
			var isInterface = type.symbol != null && type.symbol.flags & SymbolFlags.Interface != 0;
			var isValueModule = type.symbol != null && type.symbol.flags & SymbolFlags.ValueModule != 0; 
			var isConstructorType = tc.isConstructorType(objectType); // constructor types are converted to classes
			var appearsToBeStructure = !isConstructorType && !isValueModule && (isAnonType || isInterface);

			if (appearsToBeStructure) {
				// @! todo
				// assume any types in the haxe standard library are not structures. @! This can be improved in the future
				// var hxTypePath = haxeTypePathMap.getTypePath(type.symbol, accessContext, false);
				// if (hxTypePath.isExistingStdLibType) {
				// 	return false;
				// }
			}

			return appearsToBeStructure;
		} else {
			return false;
		}
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
			Log.warn('<red><b>saveHaxeModule():</> Module <b>"$path"</> has already been generated once and will be overwritten</>');
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
					var character = lineAndCharacter.character;
					sourceLocationInfo.push('${FileTools.cwdRelativeFilePath(sourceFile.fileName)}:${line + 1}${character > 0 ? ':${character + 1}' : ''}');
				}
			}
		}

		return symbol.getDocumentationComment(tc)
			.map(s -> s.text.trim())
			.concat(sourceLocationInfo)
			.join('\n');
	}

	// the type-stack is used to detect loops in recursive type conversions
	var _currentTypeStack: Array<TsType> = [];
	var _rasterizeMappedTypes = true;
	/**
		- `moduleSymbol` - is the module where this type is used. It's main use is to shorten type paths when referencing types in the same haxe module
		- `accessContext` - is the symbol access path for the symbol that contains this type reference. This is required because if we're in a Global access context, type references should prefer global access (and modular context should prefer modular access). For example, in node.js there's a type `EventEmitter` that has both global (`NodeJS.EventEmitter` and modular access `require("event").EventEmitter`). If `EventEmitter` is referenced by another globally accessible type, then this method should return the global haxe type, and same logic for modular
		- `allowAlias` - set to false to disable referring to types via an alias (i.e. `type = X`)
		- `preferInterfaceStructure` - set to true return the interface-structure version of a type in haxe. This is not handled recursively, so only the top-level reference will prefer-interface-structure
	**/
	function complexTypeFromTsType(type: TsType, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node, ?disallowAliasTarget: Symbol, preferInterfaceStructure: Bool = false): ComplexType {
		// alias : this -> real type
		if (type.isThisType()) {
			var thisTarget = type.getThisTypeTarget();
			if (thisTarget != null) {
				type = thisTarget;
			}
		}

		// print current type stack
		// Log.log('typestack: [${_currentTypeStack.map(t -> t.getId()).join(',')}] + ${type.getId()}', type);

		if (_currentTypeStack.length >= typeStackLimit) {
			Log.error('Internal error: Reached type-depth limit, stopping further type conversions. This indicates unbound recursive type conversion');
			debug();
			return macro :Dynamic;
		}

		var stackHasType = _currentTypeStack.has(type);

		// handle direct type aliases
		// we deliberately break out of type-stack recursion checking here
		if (type.aliasSymbol != null && disallowAliasTarget != type.aliasSymbol) {
			_currentTypeStack.push(type);
			var isAliasToMappedType = type.flags & TypeFlags.Object != 0 && (cast type: ObjectType).objectFlags & ObjectFlags.Mapped != 0;
			var argsLength = type.aliasTypeArguments != null ? type.aliasTypeArguments.length : -1;
			var hxType = switch {
				name: type.aliasSymbol.name,
				args: type.aliasTypeArguments,
				isMappedType: isAliasToMappedType,
				isBuiltIn: type.aliasSymbol.isBuiltIn(),
			} {
				// special case handling of built-in utility types
				case { name: 'NonNullable', args: [t], isBuiltIn: true }:
					if (t.isUnion()) {
						// remove null from union
						complexTypeFromUnionType(cast t, moduleSymbol, accessContext, enclosingDeclaration).unwrapNull();
					} else {
						complexTypeFromTsType(t, moduleSymbol, accessContext, enclosingDeclaration);
					}
				case { name: 'Partial' | 'Readonly', args: [t], isBuiltIn: true }:
					if (tc.getPropertiesOfType(t).length > 0) {
						complexTypeAnonFromTsType(type, moduleSymbol, accessContext, enclosingDeclaration);
					} else {
						// pass through type parameter
						complexTypeFromTsType(t, moduleSymbol, accessContext, enclosingDeclaration);
					}
				case { name: 'Record' | 'Pick' | 'Omit' | 'Exclude' | 'Extract', args: [k, t], isBuiltIn: true }:
					complexTypeAnonFromTsType(type, moduleSymbol, accessContext, enclosingDeclaration);

				// rasterize other mapped types to objects
				case { isMappedType: true, args: args } if (_rasterizeMappedTypes && !stackHasType): 
					// when resolving aliases, we're outside the type-stack recursion check so to help avoid recursion, we only allow 1 level of mapped-type rasterization
					_rasterizeMappedTypes = false;
					// special handling of mapped types
					// we rasterize them to anons because we don't support them natively yet (though we could use macro support types for this)
					var t = complexTypeAnonFromTsType(type, moduleSymbol, accessContext, enclosingDeclaration);
					_rasterizeMappedTypes = true;
					t;

				default:
					// haxe type alias
					var haxeTypePath = getReferencedHaxeTypePath(type.aliasSymbol, moduleSymbol, accessContext, preferInterfaceStructure);
					var params = if (type.aliasTypeArguments != null) {
						type.aliasTypeArguments.map(t -> TPType(complexTypeFromTsType(t, moduleSymbol, accessContext, enclosingDeclaration)));
					} else [];
					TPath({
						pack: haxeTypePath.pack,
						name: haxeTypePath.name,
						params: params
					});
			}

			_currentTypeStack.pop();
			return hxType;
		}

		if (stackHasType) {
			Log.log('Breaking recursive type conversion', type);
			// debug();
			return macro :Dynamic;
		}

		_currentTypeStack.push(type);

		// handle fundamental type flags
		var complexType = try if (type.flags & (TypeFlags.Any) != 0) {
			macro :Dynamic;
		} else if (type.flags & (TypeFlags.Unknown | TypeFlags.Never) != 0) {
			// we can't really represent `unknown` or `never` in haxe at the moment
			macro :Any;
		} else if (type.flags & (TypeFlags.String) != 0) {
			macro :String;
		} else if (type.flags & (TypeFlags.Number) != 0) {
			macro :Float;
		} else if (type.flags & (TypeFlags.Boolean) != 0) {
			macro :Bool;
		} else if (type.flags & (TypeFlags.Undefined) != 0) {
			macro :Null<Any>;
		} else if (type.flags & (TypeFlags.Void) != 0) {
			// in ts, void is allowed as a regular type, in haxe we can only use Void in function returns
			// everywhere else we map void to Any
			// we use an alias Undefined = Any for documentation
			SupportTypes.getUndefinedType(this);
		} else if (type.flags & (TypeFlags.Enum) != 0) {
			var hxTypePath = getReferencedHaxeTypePath(type.symbol, moduleSymbol, accessContext, false);
			TPath(hxTypePath);
		} else if (type.flags & (TypeFlags.Union) != 0) {
			complexTypeFromUnionType(cast type, moduleSymbol, accessContext, enclosingDeclaration);
		} else if (type.flags & TypeFlags.Intersection != 0) {
			complexTypeFromIntersectionType(cast type, moduleSymbol, accessContext, enclosingDeclaration);
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
		} else if (type.flags & (TypeFlags.TypeParameter) != 0) {
			complexTypeFromTypeParameter(cast type, moduleSymbol, accessContext, enclosingDeclaration);
		} else if (type.flags & (TypeFlags.Object) != 0) {
			complexTypeFromObjectType(cast type, moduleSymbol, accessContext, preferInterfaceStructure, enclosingDeclaration);
		} else if (type.flags & TypeFlags.ESSymbolLike != 0) {
			macro :js.lib.Symbol;
		} else if (type.flags & TypeFlags.BigInt != 0) {
			// we don't support BigInt at a language level, but we can convert the BigInt type itself instead
			complexTypeFromTsType(tc.getApparentType(type), moduleSymbol, accessContext, enclosingDeclaration);
			

		// these probably don't work properly:
		// } else if (type.flags & TypeFlags.Index != 0) {
		// 	complexTypeFromTsType(tc.getApparentType(type), accessContext, enclosingDeclaration);
		// } else if (type.flags & TypeFlags.Conditional != 0) {
			// @! can map these to unions
		// 	complexTypeFromTsType(tc.getApparentType(type), accessContext, enclosingDeclaration);
		// } else if (type.flags & TypeFlags.Substitution != 0) {
		// 	complexTypeFromTsType(tc.getApparentType(type), accessContext, enclosingDeclaration);
		// } else if (type.flags & TypeFlags.IndexedAccess != 0) {
		// 	complexTypeFromTsType(tc.getApparentType(type), accessContext, enclosingDeclaration);

		} else {
			Log.warn('Type not yet supported', type);
			// @! todo:
			// EnumLiteral     = 1 << 10,  // Always combined with StringLiteral, NumberLiteral, or Union
			// BigIntLiteral   = 1 << 11,
			// NonPrimitive    = 1 << 26,  // intrinsic object type

			// debug();
			macro :Dynamic;
		} catch (e: Any) {
			debug();
			_currentTypeStack.pop();
			throw e;
		}

		_currentTypeStack.pop();

		return complexType;
	}

	function complexTypeFromUnionType(unionType: UnionType, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		var nullable = unionType.isNullishUnion();
		var nullFreeTsType = tc.getNonNullableType(unionType);

		// we get better conversion if we convert without `| null` (see #26)
		var hxTypes = if (
			nullFreeTsType.aliasSymbol != null &&
			nullFreeTsType.aliasSymbol != moduleSymbol // disallow self-referential enums
		) {
			[complexTypeFromTsType(nullFreeTsType, moduleSymbol, accessContext, enclosingDeclaration)];
		} else if (nullFreeTsType.isUnion()) {
			(cast nullFreeTsType: UnionType).types.map(t -> complexTypeFromTsType(t, moduleSymbol, accessContext, enclosingDeclaration)).deduplicateTypes();
		} else {
			[complexTypeFromTsType(nullFreeTsType, moduleSymbol, accessContext, enclosingDeclaration)];
		}

		// anyUnionCollapse: if we have :Any in our union, just replace the whole thing with :Any (this can happen if a type failed conversion)
		// we may not want to do this however because the other types could still be useful documentation 
		// Null<Any> is useful as doc however
		if (anyUnionCollapse && !nullable && hxTypes.exists(t -> isHxAny(t))) {
			return macro :Dynamic;
		}

		// if union is of length 1, no need for support type
		var hxUnionType = switch hxTypes.length {
			case 0: macro :Dynamic;
			case 1: hxTypes[0];
			default: this.getUnionType(hxTypes);
		}

		return nullable ? macro :Null<$hxUnionType> : macro :$hxUnionType;
	}

	function complexTypeFromIntersectionType(intersectionType: IntersectionType, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		var types = intersectionType.types.filter(t -> {
			// filter out types we cannot handle
			t.flags & TypeFlags.NonPrimitive == 0;
		});

		// in haxe we can only intersect structures, ensure all types will be represented as structures in haxe
		var hasNonStructureType = types.exists(t -> !isTypeStructureInHaxe(t, moduleSymbol, accessContext, enclosingDeclaration));

		var nativelyIntersectable = !hasNonStructureType;

		// in haxe, structure intersections must all have unique field names
		// convert all types to haxe anons and compare fields to determine if there are any name clashes
		if (nativelyIntersectable) {
			var hxAnonTypes = types.map(t -> complexTypeAnonFromTsType(t, moduleSymbol, accessContext, enclosingDeclaration)).deduplicateTypes();
			var seenFieldNames = new Map<String, Bool>();
			var selfCallFields = 0;
			for (hxAnonType in hxAnonTypes) {
				nativelyIntersectable = nativelyIntersectable && switch hxAnonType {
					case TAnonymous(fields):
						var nameClash = false;
						for (field in fields) {
							if (field.getMeta(':selfCall') != null) {
								selfCallFields++;
							} else {
								var nativeName = field.getNativeName();
								if (seenFieldNames.exists(nativeName)) {
									nameClash = true;
									break;
								}
								seenFieldNames.set(nativeName, true);
							}
						}
						!nameClash;
					default: false; // shouldn't happen
				}

				// if multiple types have @:selfCall fields, rasterize the intersection to avoid collision between `call()` functions
				if (selfCallFields > 1) {
					nativelyIntersectable = false;
				}

				if (!nativelyIntersectable) break;
			}
		}

		// if all types are natively intersectable in haxe return TIntersection, if any are not, rasterize to a single anon
		return if (nativelyIntersectable) {
			/**
				Hack to work around a haxe compiler bug #9397, stack-overflow with recursive intersections.
				This work around does not resolve the general case, but resolves the common case where we have
				```typescript
				type T = {
					field: T & OtherTypes
				}
				```

				This is fixed in haxe 4.2
			**/
			var selfReferencedType = moduleSymbol != null ? types.find(t -> t.symbol == moduleSymbol || t.aliasSymbol == moduleSymbol) : null;
			if (selfReferencedType != null) {
				Log.warn('Recursive intersections are not supported (haxe issue #9397); some type information will be lost', intersectionType);
				complexTypeFromTsType(selfReferencedType, moduleSymbol, accessContext, enclosingDeclaration);
			} else {
				// native haxe intersection
				// convert intersections, preferring interface structure references where possible
				var hxTypes = types.map(t -> complexTypeFromTsType(t, moduleSymbol, accessContext, enclosingDeclaration, null, true)).deduplicateTypes();
				TIntersection(hxTypes);
			}
		} else {
			if (allowIntersectionRasterization) {
				complexTypeAnonFromTsType(intersectionType, moduleSymbol, accessContext, enclosingDeclaration);
			} else {
				// @! todo: avoid recursive type conversion (see jquery)
				macro :Dynamic;
			}
		}
	}

	function complexTypeFromTypeParameter(typeParameter: TypeParameter, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		return if (typeParameter.symbol != null) {
			// there's also a variation `IndexedAccessType` that's not currently handled
			// `: this` seems to need special handling
			var thisTarget: Null<TsType> = typeParameter.getThisTypeTarget();
			if (typeParameter.isThisType() && thisTarget != null) {
				complexTypeFromTsType(thisTarget, moduleSymbol, accessContext, enclosingDeclaration);
			} else {
				TPath({
					name: typeParameter.symbol.name.toSafeTypeName(),
					pack: [],
				});
			}
		} else {
			Log.error('Internal error: Failed to determine type parameter name, using `T`', typeParameter);
			macro :T;
		}
	}

	function complexTypeFromObjectType(objectType: ObjectType, moduleSymbol: Symbol, accessContext: SymbolAccess, preferInterfaceStructure: Bool, ?enclosingDeclaration: Node): ComplexType {
		// @! todo:
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
			complexTypeFromTypeReference(cast objectType, moduleSymbol, accessContext, preferInterfaceStructure, enclosingDeclaration);
		} else if (objectType.objectFlags & ObjectFlags.ClassOrInterface != 0) {
			complexTypeFromInterfaceType(cast objectType, moduleSymbol, accessContext, preferInterfaceStructure, enclosingDeclaration);
		} else if (objectType.objectFlags & ObjectFlags.Anonymous != 0) {
			complexTypeAnonFromTsType(objectType, moduleSymbol, accessContext, enclosingDeclaration);
		} else {
			Log.warn('Could not convert object type <b>${objectType.getObjectFlagsInfo()}</b> ${objectType.objectFlags}', objectType);
			// debug();
			macro :Dynamic;
		}
	}

	/**
		Generates a haxe anonymous object from the type, type does not have to be a native typescript anon
	**/
	function complexTypeAnonFromTsType(tsType: TsType, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node) {
		if (tsType.flags & TypeFlags.TypeParameter != 0) {
			Log.warn('Cannot get anon type from type parameter', tsType);
			return macro :Dynamic;
		}

		/** 
			In typescript, function types have the object flag 'Anonymous' because they're actually represented as the call signatures of anons
			```typescript
			let f: (a: number) => string
			// is actually represented as
			let f: { (a: number): string }
			```
		**/

		var typeFields = tc.getPropertiesOfType(tsType).filter(s -> s.isAccessibleField());
		var callSignatures = tsType.getCallSignatures();
		var constructSignatures = tsType.getConstructSignatures();

		if (tsType.getConstructSignatures().length > 0) {
			Log.warn('Type has construct signature but this is currently unhandled', tsType);
			// debug();
		}

		// for the special case of a single call signature and no props we can return a function type
		return if (callSignatures.length == 1 && constructSignatures.length == 0 && typeFields.length == 0) {
			complexTypeFromCallSignature(callSignatures[0], moduleSymbol, accessContext, enclosingDeclaration);
		} else {
			var fields = new Array<Field>();

			/**
				When a type has multiple signatures we can use a trick: wrap them in an object and adding @:selfCall
				For example:
				var x: {
					@:selfCall
					@:overload(function (a: Int): Void {})
					function call(): Void;
				}
				Then to use overloads, you can do, `x.call(3)` and this compiles to `x(3)`
			**/
			if (callSignatures.length > 0) {
				fields.push(functionFieldFromCallSignatures(selfCallFunctionName, callSignatures, moduleSymbol, accessContext, enclosingDeclaration));
			}

			// add properties
			fields = fields.concat(typeFields.map(p -> fieldFromSymbol(p.name, p, moduleSymbol, accessContext, enclosingDeclaration)));

			// remove disallowed accessors (only `final` is allowed on anon object fields)
			for (field in fields) {
				if (field.access != null) field.access = field.access.filter(a -> switch a {
					case AFinal, ADynamic: true;
					default: false;
				});
			};

			HaxeTools.resolveNameCollisions(fields);

			TAnonymous(fields);
		}
	}

	function functionFieldFromCallSignatures(fieldName: String, callSignatures: Array<Signature>, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): Field {
		var field = functionFieldFromSignatures(fieldName, callSignatures, moduleSymbol, accessContext, enclosingDeclaration);
		field.setMeta(':selfCall');
		return field;
	}

	function functionFieldFromSignatures(fieldName: String, signatures: Array<Signature>, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): Field {
		var baseSignature = signatures[0];
		var overloadSignatures = signatures.slice(1);
		var overloadMetas = overloadSignatures.map(signature -> {
			var fun = functionFromSignature(signature, moduleSymbol, accessContext, enclosingDeclaration);
			fun.expr = macro {};
			return ({
				name: ':overload',
				params: [{
					expr: EFunction(FAnonymous, fun),
					pos: null,
				}],
				pos: null,
			}: MetadataEntry);
		});
		var baseDoc = baseSignature.getDocumentationComment(tc).map(d -> d.text).join('\n');

		var baseDeclaration = baseSignature.getDeclaration();
		var hxAccessModifiers = if (baseDeclaration != null) {
			var tsModifiers = baseDeclaration.getSignatureDeclarationModifiers();
			if (tsModifiers != null) {
				accessFromModifiers(tsModifiers);
			} else new Set();
		} else new Set();

		return {
			name: fieldName,
			meta: overloadMetas,
			kind: FFun(functionFromSignature(baseSignature, moduleSymbol, accessContext, enclosingDeclaration)),
			doc: baseDoc,
			access: hxAccessModifiers.toArray(),
			pos: null,
		};
	}

	function newFieldFromSignatures(signatures: Array<Signature>, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): Field {
		var field = functionFieldFromSignatures('new', signatures, moduleSymbol, accessContext, enclosingDeclaration);
		switch field.kind {
			case FFun(fun):
				// remove return type form `function new` (disallowed in haxe)
				fun.ret = null;
			default:
		}
		return field;
	}

	function complexTypeFromCallSignature(callSignature: Signature, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		var fun = functionFromSignature(callSignature, moduleSymbol, accessContext, enclosingDeclaration);
		// haxe doesn't support type-parameters on function types, e.g.
		// 	`let fun: <T>(a: T) -> void`
		// to resolve this we replace type-parameters in fun with Any
		if (fun.params != null && fun.params.length > 0) {
			fun = tool.ComplexTypeTools.mapFunction(fun, t -> {
				switch t {
					case TPath({ pack: [], name: name }) if (fun.params.exists(tp -> tp.name == name)): macro :Any;
					default: t;
				}
			});
			fun.params = null;
		}

		if (unionizedFunctionTypes) {
			/**
				In typescript `:() => R` can unify with `:(?opt) -> R`

				In haxe, the signature must match

				To achieve the same type flexibility in the haxe externs we can create a new function signature for each optional parameter

				`(x, ?opt) -> R`
					becomes `(x) -> R  |  (x, opt) -> R`

				`(x, ?opt, ?opt2) -> R`
					becomes `(x) -> R  |  (x, opt) -> R  |  (x, opt, opt2) -> R`
			**/
			// we don't use TOptional() because optionals are handled by alternate signatures instead
			var hxArgs = fun.args.map(arg -> TNamed(arg.name, arg.type != null ? arg.type : macro :Any));
			var hxReturnType = fun.ret != null ? fun.ret : macro :Dynamic;
			var functionSignatures = new Array<ComplexType>();

			var hxNonOptionalArgs = new Array<ComplexType>();
			for (i in 0...fun.args.length) {
				var arg = fun.args[i];
				if (arg.opt == true) break;
				hxNonOptionalArgs.push(hxArgs[i]);
			}

			// base function signature
			functionSignatures.push(TFunction(hxNonOptionalArgs, hxReturnType));

			for (i in 0...fun.args.length) {
				var arg = fun.args[i];
				if (arg.opt == true) {
					functionSignatures.push(
						TFunction(hxArgs.slice(0, i + 1), hxReturnType)
					);
				}
			}

			return this.getUnionType(functionSignatures);
		} else {
			/**
				The simpler variation of this is to have a single function signature with optional parameters (but this has stricter unification as mentioned)
			**/
			return TFunction(
				fun.args.map(arg -> {
					var param = TNamed(arg.name, arg.type != null ? arg.type : macro :Any);
					return arg.opt != null  && arg.opt ? TOptional(param) : param;
				}),
				fun.ret != null ? fun.ret : macro :Dynamic
			);
		}

	}

	function complexTypeFromTypeReference(typeReference: TypeReference, moduleSymbol: Symbol, accessContext: SymbolAccess, preferInterfaceStructure: Bool, ?enclosingDeclaration: Node): ComplexType {
		// determine reference sub-type
		return if ((typeReference.objectFlags & ObjectFlags.ClassOrInterface) != 0) {
			complexTypeFromGenericType(cast typeReference, moduleSymbol, accessContext, preferInterfaceStructure, enclosingDeclaration);
		} else if ((typeReference.target.objectFlags & ObjectFlags.Tuple != 0)) {
			// it's a TupleTypeReference if its target is a Tuple
			complexTypeFromTupleTypeReference(cast typeReference, moduleSymbol, accessContext, enclosingDeclaration);
		} else {
			if (typeReference.target == cast typeReference) { // avoid direct cycles
				// this can happen with TupleReferences and GenericTypes but we shouldn't get this 
				Log.error('Internal error: recursive type reference');
				return macro :Dynamic;
			}
			
			var hxTarget = complexTypeFromTsType(cast typeReference.target, moduleSymbol, accessContext, enclosingDeclaration, null, preferInterfaceStructure);

			var hxTypeArguments = if (typeReference.typeArguments != null) {
				typeReference.typeArguments.map(arg -> TPType(complexTypeFromTsType(arg, moduleSymbol, accessContext, enclosingDeclaration)));
			} else [];

			// replace type parameters with type arguments
			switch hxTarget {
				case TPath(p):
					var argumentCount = hxTypeArguments.length;
					var paramCount = p.params != null ? p.params.length : 0;
					if (paramCount != argumentCount) {
						Log.warn('TypeReference has <b>$argumentCount</> arguments but target has <b>$paramCount</> parameters', typeReference);
					}
					p.params = hxTypeArguments;
				default: Log.error('Internal error: Expected TPath from TypeReference', typeReference);
			}
			hxTarget;
		}
	}

	function complexTypeFromTupleTypeReference(tupleTypeReference: TupleTypeReference, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		var hxElementTypes = tupleTypeReference.typeArguments.map(t -> complexTypeFromTsType(t, moduleSymbol, accessContext, enclosingDeclaration));
		return this.getTupleType(hxElementTypes);
	}

	/**
		While a GenericType could include the full type definition because the return is ComplexType we just return a TPath()
	**/
	function complexTypeFromGenericType(genericType: GenericType & TypeReference, moduleSymbol: Symbol, accessContext: SymbolAccess, preferInterfaceStructure: Bool, ?enclosingDeclaration: Node): ComplexType {
		// sub-type of GenericType
		return if (genericType.objectFlags & ObjectFlags.Tuple != 0) {
			complexTypeFromTupleType(cast genericType, moduleSymbol, accessContext, enclosingDeclaration);
		} else {
			complexTypeFromInterfaceType(genericType, moduleSymbol, accessContext, preferInterfaceStructure, enclosingDeclaration);
		}
	}

	function complexTypeFromTupleType(tupleType: TupleType, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node) {
		Log.warn('Todo: TupleType', tupleType);
		// need an example where this path is hit
		debug();
		return macro :std.Array<Any>;
	}

	function complexTypeFromInterfaceType(classOrInterfaceType: InterfaceType, moduleSymbol: Symbol, accessContext: SymbolAccess, preferInterfaceStructure: Bool, ?enclosingDeclaration: Node): ComplexType {
		return if (classOrInterfaceType.symbol != null) {
			var hxTypePath = getReferencedHaxeTypePath(classOrInterfaceType.symbol, moduleSymbol, accessContext, preferInterfaceStructure);
			hxTypePath.params = if (classOrInterfaceType.typeParameters != null) {
				classOrInterfaceType.typeParameters.map(t -> TPType(complexTypeFromTypeParameter(t, moduleSymbol, accessContext, enclosingDeclaration)));
			} else null;
			TPath(hxTypePath);
		} else {
			Log.error('Internal error: no symbol for ClassOrInterface type', classOrInterfaceType);
			debug();
			macro :Dynamic;
		}
	}

	function complexTypeBaseOfEnumSymbol(symbol: Symbol): ComplexType {
		var hxEnumTypeName: Null<String> = null;
		// determine underlying type of enum by iterating its members
		var enumMembers = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.EnumMember != 0);
		if (enumMembers.length > 0) for (member in enumMembers) {
			var enumMemberNode = member.valueDeclaration;
			var runtimeValue = tc.getConstantValue(cast enumMemberNode);
			var hxMemberTypeName = switch js.Syntax.typeof(cast runtimeValue) {
				// enums are implicitly ints by default
				case 'undefined': 'Int';
				case 'number': 
					Math.floor(cast runtimeValue) == runtimeValue ? 'Int' : 'Float';
				case 'string': 'String';
				default: 'Any';
			}

			// compare this member type with the currently set hxEnumType
			// and handle Int -> Float cast
			if (hxEnumTypeName != hxMemberTypeName) {
				hxEnumTypeName = switch [hxEnumTypeName, hxMemberTypeName] {
					case [null, _]: hxMemberTypeName;
					case ['Int', 'Float']: 'Float';
					case ['Float', 'Int']: 'Float';
					default: 'Any';
				}
			}
		} else {
			hxEnumTypeName = 'Int';
		}

		return if (hxEnumTypeName != null) {
			TPath({pack: [], name: cast hxEnumTypeName});
		} else {
			macro :Any;
		}
	}

	function complexTypeFromTypeNode(node: TypeNode, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): ComplexType {
		var type = tc.getTypeFromTypeNode(node);
		if (untyped type.intrinsicName == 'error') {
			debug();
			Log.error('Internal error: Error getting type from type node', node);
		}
		return complexTypeFromTsType(type, moduleSymbol, accessContext, enclosingDeclaration);
	}

	function getTsTypeOfField(symbol:Symbol): TsType {
		return if (symbol.valueDeclaration != null) {
			tc.getTypeOfSymbolAtLocation(symbol, symbol.valueDeclaration);
		} else {
			var parentSymbol = symbol.getSymbolParent();
			// we can get the type of a prototype symbol by using the parent valueDeclaration as a location
			if (symbol.flags & SymbolFlags.Prototype != 0 && parentSymbol != null) {
				tc.getTypeOfSymbolAtLocation(symbol, parentSymbol.valueDeclaration);
			} else {
				Reflect.field(symbol, 'type') != null ? Reflect.field(symbol, 'type') : tc.getDeclaredTypeOfSymbol(symbol);
			}
		}
	}

	function fieldFromSymbol(nativeFieldName: String, symbol: Symbol, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): Field {
		var pos = symbol.getPosition();
		var meta = new Array<MetadataEntry>();
		var safeName = nativeFieldName.toSafeIdent();
		var nameChanged = safeName != nativeFieldName;

		if (nameChanged) {
			meta.push({name: ':native', pos: pos, params: [HaxeTools.toStringExpr(nativeFieldName, pos)]});
		}

		var isOptional = symbol.flags & SymbolFlags.Optional != 0;

		// transient symbols (symbols generated as part of some process rather than in the source doe) don't have declarations
		var baseDeclaration: Null<Declaration> = if (symbol.valueDeclaration != null) {
			symbol.valueDeclaration;
		} else if (symbol.flags & SymbolFlags.Prototype == 0) { // it's ok for the prototype field to have no valueDeclaration
			Log.warn('Missing valueDeclaration for field symbol', symbol);
			// debug();
			null;
		} else null;
		
		var hxAccessModifiers = if (baseDeclaration != null && baseDeclaration.modifiers != null) {
			accessFromModifiers(baseDeclaration.modifiers, symbol);
		} else new Set();
		// add `final` modifer for const variable declarations
		if (baseDeclaration != null && TsSyntaxTools.isVarConst(baseDeclaration)) {
			hxAccessModifiers.add(AFinal);
		}

		var userDoc = getDoc(symbol);
		var docParts = userDoc != '' ? [userDoc] : [];

		var tsType = getTsTypeOfField(symbol);

		// add errors to field docs
		function onError(message) {
			Log.error('fieldFromSymbol(): ' + message, symbol);
			docParts.push('@DTS2HX-ERROR: ${Console.stripFormatting(message)}');
		}
		
		function kindFromFunctionSignatures(signatures: Array<Signature>) {
			return if (signatures.length > 0) {
				var functionField = functionFieldFromSignatures(safeName, signatures, moduleSymbol, accessContext, enclosingDeclaration);
				if (functionField.meta != null) {
					meta = meta.concat(functionField.meta);
				}
				functionField.kind;
			} else {
				onError('Internal error: failed to get function signatures from type (type is probably wrapped in another)');
				FFun({
					args: [],
					ret: macro :Dynamic,
					params: [],
					expr: null,
				});
			}
		}
		
		var kind = if (symbol.flags & (SymbolFlags.PropertyOrAccessor | SymbolFlags.Variable) != 0) {
			var nullFreeTsType = tc.getNonNullableType(tsType);
			var isNullable = tsType.isNullishUnion();
			// handle special case where variable has a function type
			// this is done to enable support for overloads, as well as to enable calling functions would be typed as AnyOf<X, Y> (see unionizedFunctionTypes)
			var callSignatures = tc.getSignaturesOfType(nullFreeTsType, Call);
			var constructSignatures = tc.getSignaturesOfType(nullFreeTsType, Construct);
			var typeFields = tc.getPropertiesOfType(nullFreeTsType).filter(s -> s.isAccessibleField());
			if (callSignatures.length > 0 && constructSignatures.length == 0 && typeFields.length == 0) {
				// replace `var x: FnType` with `dynamic function x()`
				if (!hxAccessModifiers.has(AFinal)) {
					hxAccessModifiers.add(ADynamic);
				}
				hxAccessModifiers.remove(AFinal); // `final function` is not valid syntax
				// if nullable, force optional (this isn't perfect but it's good enough)
				if (isNullable) {
					isOptional = true;
				}
				kindFromFunctionSignatures(callSignatures);
			} else {
				// variable field
				if (baseDeclaration != null) switch baseDeclaration.kind {
					case VariableDeclaration, PropertySignature, PropertyDeclaration:
					case GetAccessor, SetAccessor:
					default: 
						onError('Unhandled declaration kind <b>${TsSyntaxTools.getSyntaxKindName(baseDeclaration.kind)}</>');
				}

				var hxType = complexTypeFromTsType(tsType, moduleSymbol, accessContext, enclosingDeclaration);

				if (isOptional) {
					hxType = hxType.unwrapNull();
				}

				// get-only accessors are readonly
				if (symbol.flags & SymbolFlags.GetAccessor != 0 && symbol.flags & SymbolFlags.SetAccessor == 0) {
					hxAccessModifiers.add(AFinal);
				}

				FVar(hxType, null);
			}
		} else if (symbol.flags & (SymbolFlags.Method | SymbolFlags.Function) != 0) {
			if (baseDeclaration != null) switch baseDeclaration.kind {
				case MethodSignature, MethodDeclaration, FunctionDeclaration:
				default: 
					onError('Unhandled declaration kind <b>${TsSyntaxTools.getSyntaxKindName(baseDeclaration.kind)}</>');
			}

			var nullFreeTsType = tc.getNonNullableType(tsType);
			var signatures = tc.getSignaturesOfType(nullFreeTsType, Call);
			kindFromFunctionSignatures(signatures);
		} else if (symbol.flags & SymbolFlags.EnumMember != 0) {

			var parent = symbol.getSymbolParent();
			var isConstEnum = if (parent != null) {
				parent.flags & SymbolFlags.ConstEnum != 0;
			} else {
				Log.error('EnumMember did not have a parent', symbol);
				true;
			}
			
			FVar(null, isConstEnum ? HaxeTools.primitiveValueToExpr(tc.getConstantValue(cast symbol.valueDeclaration)) : null);

		} else {

			onError('Unhandled symbol flags');
			var type = tc.getTypeOfSymbolAtLocation(symbol, symbol.valueDeclaration);
			debug();
			FVar(complexTypeFromTsType(type, moduleSymbol, accessContext, enclosingDeclaration), null);

		}

		if (isOptional) {
			meta.unshift({name: ':optional', pos: pos});
		}

		var field: Field = {
			name: safeName,
			meta: meta,
			pos: pos,
			kind: kind,
			doc: docParts.join('\n\n'),
			access: hxAccessModifiers.toArray(),
		};

		return field;
	}

	function functionFromSignature(signature: Signature, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): Function {
		// constructor declarations should not have type parameters (see #74)
		// we leave _ConstructSignatureDeclaration_ untouched because these can have type parameters (although this isn't perfect – see WeakMap in lib.es2015.collection.d.ts)
		var signatureDeclarationNode = signature.getDeclaration();
		var isConstructorDeclaration = signatureDeclarationNode != null && Ts.isConstructorDeclaration(signatureDeclarationNode);

		var hxTypeParams = if (signature.typeParameters != null && !isConstructorDeclaration) {
			signature.typeParameters.map(t -> typeParamDeclFromTsTypeParameter(t, moduleSymbol, accessContext, enclosingDeclaration));
		} else [];

		var hxParameters = if (signature.parameters != null ) tc.getExpandedParameters(signature).map(s -> {
			var parameterDeclaration: Null<ParameterDeclaration> = cast s.valueDeclaration;
			var isOptional = parameterDeclaration != null && tc.isOptionalParameter(parameterDeclaration);
			var isRest = parameterDeclaration != null && parameterDeclaration.dotDotDotToken != null;
			// getExpandedParameters() can create transient symbols with no declaration, but they do have a .type field
			var tsType = parameterDeclaration != null ? tc.getTypeOfSymbolAtLocation(s, parameterDeclaration) : untyped s.type;

			var hxType = complexTypeFromTsType(tsType, moduleSymbol, accessContext, parameterDeclaration);

			// a rest parameter cannot be optional in ts
			if (isRest) {
				// hxType should be Array<T>, we want to unwrap this and change to Rest<T>
				// @! could use tc.isAssignableTo here?
				// or tc.isArrayLikeType()
				hxType = switch hxType {
					case TPath({name: 'Array', params: [TPType(param)]}):
						macro :haxe.extern.Rest<$param>;
					default:
						Log.warn('Unsupported rest type', s);
						macro :haxe.extern.Rest<Any>;
				}
			}

			if (isOptional) {
				hxType = HaxeTools.unwrapNull(hxType);
			}

			// I don't think d.ts files allow default values for parameters but we'll keep this here anyway
			var value = parameterDeclaration != null ? HaxeTools.primitiveValueToExpr(tc.getConstantValue(parameterDeclaration)) : null;

			return ({
				name: s.name.toSafeIdent(),
				type: hxType,
				opt: isOptional,
				value: value
			}: FunctionArg);
		}) else [];

		var tsRet = tc.getReturnTypeOfSignature(signature);
		var hxRet = if (tsRet.flags & (TypeFlags.Void) != 0) {
			macro :Void;
		} else {
			complexTypeFromTsType(tsRet, moduleSymbol, accessContext, signature.declaration);
		}

		return {
			args: hxParameters,
			ret: hxRet,
			params: hxTypeParams,
			expr: null,
		}
	}

	/**
		Given a symbol with type-parameter declarations, e.g. `class X<T extends number>`, return the haxe type-parameter declaration equivalent
		Symbol must declare a `Class`, `Interface` or `TypeAlias`
	**/
	function typeParamDeclFromTypeDeclarationSymbol(symbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): Array<TypeParamDecl> {
		return [for (t in symbol.getDeclarationTypeParameters()) {
			name: TsSyntaxTools.typeParameterDeclarationName(t),
			constraints: enableTypeParameterConstraints && t.constraint != null ? [complexTypeFromTypeNode(t.constraint, symbol, accessContext, enclosingDeclaration)] : null
		}];
	}

	function typeParamDeclFromTsTypeParameter(typeParameter: TypeParameter, moduleSymbol: Symbol, accessContext: SymbolAccess, ?enclosingDeclaration: Node): TypeParamDecl {
		// for some reason typeParameter.getConstraint() has issues
		// in the following class field `parse<X extends Example>(a: T): void;`, the constraint `Example` is reported as having typeArguments when it doesn't
		var typeParamNode: Null<TypeParameterDeclaration> = cast typeParameter.symbol.declarations.find(d -> d.kind == TypeParameter);
		var hxConstraint = if (enableTypeParameterConstraints && typeParamNode != null && typeParamNode.constraint != null ) {
			complexTypeFromTypeNode(typeParamNode.constraint, moduleSymbol, accessContext, enclosingDeclaration);
		} else null;
		return {
			name: typeParameter.symbol.name.toSafeTypeName(),
			constraints: hxConstraint != null ? [hxConstraint] : null,
		}
	}

	function accessFromModifiers(modifiers: ModifiersArray, ?logSymbol: Symbol): Set<Access> {
		var access = new Array<Access>();
		for (modifier in (cast modifiers: Array<Modifier>)) {
			switch modifier.kind {
				case SyntaxKind.AbstractKeyword:
					Log.warn('`abstract` modifier not handled', logSymbol);
				case SyntaxKind.AsyncKeyword:
					Log.warn('`async` modifier not handled', logSymbol);
				case SyntaxKind.ConstKeyword:
					access.push(AFinal);
				case SyntaxKind.DeclareKeyword:
				case SyntaxKind.DefaultKeyword:
				case SyntaxKind.ExportKeyword:
				case SyntaxKind.PublicKeyword:
					access.push(APublic);
				case SyntaxKind.PrivateKeyword:
					access.push(APrivate);
				case SyntaxKind.ProtectedKeyword:
					access.push(APrivate);
				case SyntaxKind.ReadonlyKeyword:
					access.push(AFinal);
				case SyntaxKind.StaticKeyword:
					access.push(AStatic);
				default:
					Log.warn('Unhandled modifier kind <b>${TsSyntaxTools.getSyntaxKindName(modifier.kind)}</b>', logSymbol);
			}
		}
		return new Set(access);
	}

	function isHxAny(t: ComplexType) {
		return switch t {
			case TPath({name: 'Any' | 'Dynamic', pack: ['std'] | []}): true;
			default: false;
		}
	}

	/**
		NodeBuilding generally causes problems so be very careful if you need to use this
	**/
	static final defaultNodeBuilderFlags =
		NodeBuilderFlags.NoTruncation | // truncation prevents expanding deeply nested nodes, we always want to expand completely
		NodeBuilderFlags.WriteArrayAsGenericType // Write Array<T> instead T[]
	;

	static final selfCallFunctionName = 'call';

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
	Declarations can assign a name to a *type*, *value* and *namespace*. A single name may have be used for all of these. This is called declaration merging.
	Interfaces can also merge with other interfaces (and namespaces with namespaces)
	https://www.typescriptlang.org/docs/handbook/declaration-merging.html#basic-concepts

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

	**TypeChecker**
	- `getAugmentedPropertiesOfType(declaredType)`, all properties but also includes `bind`, `apply` etc (don't use)
	- `getApparentType()` can create transient types. Transient types can lead to infinite loop type conversions because we cannot match a transient type against another. Avoid using
**/