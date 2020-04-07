import ds.OnceOnlyQueue;
import haxe.ds.ReadOnlyArray;
import haxe.io.Path;
import haxe.macro.Expr;
import typescript.Ts;
import typescript.ts.CompilerHost;
import typescript.ts.CompilerOptions;
import typescript.ts.InternalSymbolName;
import typescript.ts.Program;
import typescript.ts.SourceFile;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.SyntaxKind;
import typescript.ts.TypeAliasDeclaration;
import typescript.ts.TypeChecker;
import typescript.ts.TypeNode;
import js.Lib.debug;

using ConverterContext.SymbolAccessTools;
using StringTools;
using TsInternal;
using tool.HaxeTools;
using tool.StringTools;
using tool.TsProgramTools;
using tool.TsSymbolTools;

@:expose
@:nullSafety
class ConverterContext {

	public final entryPointModuleId: String;
	public final generatedModules = new Map<String, HaxeModule>();
	public final moduleDependencies: ReadOnlyArray<String>;
	final log: Log;
	final tc: TypeChecker;
	final host: CompilerHost;
	final program: Program;

	// symbol access map is filled during an initial pass over the program
	// the access path for key-symbols such as types are stored so we can retrieve them later when we have a type-reference
	final symbolAccessMap = new Map<Int, Array<SymbolAccess>>();

	/**
		Unique list of symbols to convert
		When a type is referenced during conversion, if it is inaccessible (and therefore not converted in the first pass), add it to this queue to be converted
	**/
	final declarationSymbolQueue = new OnceOnlySymbolQueue();

	public function new(moduleName: String, entryPointFilePath: String, compilerOptions: CompilerOptions, ?log_: Log) {
		// this will be used as the argument to require()
		this.log = log_ != null ? log_ : new Log();
		this.entryPointModuleId = inline normalizeModuleName(moduleName);
		
		log.log('<green>Converting module: <b>$entryPointModuleId</b>');

		this.host = Ts.createCompilerHost(compilerOptions);
		this.program = Ts.createProgram([entryPointFilePath], compilerOptions, host);
		this.tc = program.getTypeChecker();

		log.diagnostics(program.getAllDiagnostics());

		var entryPointSourceFile = program.getSourceFile(entryPointFilePath);

		if (entryPointSourceFile == null) {
			throw 'Failed to get entry-point source file';
		}

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

		moduleDependencies = moduleRootSourceFiles.filter(s -> s != entryPointSourceFile).map(getSourceFileModuleName);

		var defaultLibSourceFiles = program.getSourceFiles().filter(s -> s.hasNoDefaultLib);

		// populate symbol access map
		buildSymbolAccessMap(defaultLibSourceFiles.concat(moduleRootSourceFiles));

		// generate a haxe type-path for all type or module-class symbols in the program
		buildHaxeModuleMap();

		// convert symbols for just this module
		walkReferencedSourceFiles(entryPointSourceFile, (sourceFile) -> {
			for (symbol in program.getExportsOfSourceFile(sourceFile)) {
				walkDeclarationSymbols(symbol, (symbol, _) -> declarationSymbolQueue.tryEnqueue(symbol));
			}
		});

		// convert declaration symbols (types and module variables)
		// declarationSymbolQueue grows as types are referenced during conversion
		while (!declarationSymbolQueue.empty()) {
			var symbol: Symbol = cast declarationSymbolQueue.dequeue();

			// `Alias` here does not mean type-alias, instead it means export-alias (like `export {Type}`)
			// aliases are accounted for with SymbolAccess and don't need to handled here
			var handled = symbol.flags & SymbolFlags.Alias != 0;

			if (symbol.flags & (SymbolFlags.Type) != 0) {
				// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
				handled = true;
				convertTypeSymbol(symbol);
			}

			if (symbol.flags & (SymbolFlags.Variable | SymbolFlags.Function) != 0) {
				// FunctionScopedVariable | BlockScopedVariable | Function
				handled = true;
			}

			if (symbol.flags & (SymbolFlags.ValueModule) != 0) {
				// @! generate a module class
			}

			if (symbol.flags & (SymbolFlags.Module) != 0) {
				// ValueModule | NamespaceModule
				handled = true;
			}

			if (!handled) {
				log.error('Unhandled symbol in declarationSymbol queue', symbol);
			}
		} 
	}
	
	/**
		We run this for every referenced module because haxe type paths depend on symbol accessibility
		so if we reference a type in an external module, to generate the correct haxe path we must know that external symbol's access path
	**/
	function buildSymbolAccessMap(moduleRootSourceFiles: Array<SourceFile>) {
		function setAccess(symbol: Symbol, access: SymbolAccess) {
			var accessArray = symbolAccessMap.get(symbol.getId());
			if (accessArray == null) {
				accessArray = [];
				symbolAccessMap.set(symbol.getId(), accessArray);
			}

			var shouldAdd = switch access {
				case AmbientModule(_), ExportModule(_):
					// only worth adding an ambient module if there isn't already an module path
					accessArray.filter(a -> a.match(AmbientModule(_, _) | ExportModule(_, _, _))).length == 0;
				case Global(_):
					// we can have a global and modular access, but we don't want more than global access
					accessArray.filter(a -> a.match(Global(_))).length == 0;
				case Inaccessible:
					// no need to add Inaccessible, symbols with no values in symbolAccessMap are considered Inaccessible
					false;
			}

			if (shouldAdd) {
				accessArray.push(access);
			}
		}

		for (moduleSourceFile in moduleRootSourceFiles) {
			walkReferencedSourceFiles(moduleSourceFile, (sourceFile) -> {
				var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);

				var sourceFileAccess = if (sourceFileSymbol != null) {
					ExportModule(getSourceFileModuleName(sourceFile), sourceFileSymbol, []);
				} else {
					Global([]);
				}

				// log.log('Building symbol access map for source file, module <b>${moduleSourceFile.moduleName}</>, scope <yellow,b>${sourceFileAccess.toString()}</>', sourceFile);

				for (symbol in program.getExportsOfSourceFile(sourceFile)) {
					walkDeclarationSymbols(symbol, (symbol, accessChain) -> {
						var currentAccess = sourceFileAccess;
						for (s in accessChain) {
							currentAccess = symbolAccessAppendSymbol(currentAccess, s);
						}
						setAccess(symbol, currentAccess);
					});
				}
			});
		}
	}

	function buildHaxeModuleMap() {
		var symbolsRequiringTypePath = new Map<Int, Symbol>();
		for (topLevelSymbol in program.getTopLevelDeclarationSymbols()) {
			walkDeclarationSymbols(topLevelSymbol, (symbol, _) -> {
				if (symbol.flags & (SymbolFlags.ValueModule | SymbolFlags.Type) != 0 ) {
					symbolsRequiringTypePath.set(symbol.getId(), symbol);
				}
			});
		}

		var moduleMap = new Map<String, Array<Symbol>>();

		for (id => symbol in symbolsRequiringTypePath) {
			// now we need to consider Types and ValueModules separately I think
			// consider a symbol that has definitions in lib.dom.ts and the local module, we need two type-paths depending on symbol-interpretation
			// log.log(symbol);
			for (access in getAccess(symbol)) {
				var pack = generateHaxePackagePath(symbol, access);
				var name = generateHaxeTypeName(symbol, access);
				var moduleKey = getHaxeModuleKey(pack, name); 
				var symbolsWithKey = moduleMap.get(moduleKey);
				if (symbolsWithKey == null) {
					symbolsWithKey = [];
					moduleMap.set(moduleKey, symbolsWithKey);
				}
				symbolsWithKey.push(symbol);
				// log.log('\t' + getHaxeModuleKey(pack, name) + ' <dim,yellow>${access.toString()}</>');
			}
		}

		for (key => symbols in moduleMap) {
			if (symbols.length > 1) {
				log.log('<yellow>Multiple symbols with key <b>$key</></>');
				for (symbol in symbols) {
					log.log('\t', symbol);
				}
			}
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

	function generateHaxePackagePath(symbol: Symbol, access: SymbolAccess): Array<String> {
		var pack = new Array<String>();

		var defaultLibName: Null<String> = null;
		for (declaration in symbol.getDeclarationsArray()) {
			var sourceFile = declaration.getSourceFile();
			if (sourceFile.hasNoDefaultLib) {
				defaultLibName = Path.withoutDirectory(sourceFile.fileName);
				break;
			}
		}

		if (defaultLibName != null) {
			return switch defaultLibName.toLowerCase() {
				case 'lib.dom.d.ts': ['js', 'html'];
				default: ['js', 'lib'];
			}
		}

		// prefix the module name (if it's a path, add a pack for each directory)
		pack = convertFilePathToHaxePackage(entryPointModuleId);

		// we prepend the module path to avoid collisions if the symbol is exported from multiple modules
		// Babylonjs's type definition are a big issue for this and many of the module paths do not actually exist in babylon.js at runtime
		var identifierChain = access.getIdentifierChain();
		var parentIdentifierPackages = identifierChain.slice(0, identifierChain.length - 1).map(s -> s.toSafePackageName());
		switch access {
			case AmbientModule(path, _), ExportModule(path, _):
				var pathPack = convertFilePathToHaxePackage(path);
				// if the first part of the path is the same as the module id, don't add to avoid duplicates (like babylonjs.babylonjs.cameras)
				if (pathPack[0] == pack[0]) {
					pathPack.shift();
				}
				pack = pack.concat(pathPack).concat(parentIdentifierPackages);
			case Global(_):
				pack = pack.concat(['global']).concat(parentIdentifierPackages);
			case Inaccessible:
				pack = pack.concat(
					symbol.getSymbolParents()
					.filter(s -> !~/^__\w/.match(s.name)) // skip special names (like '__global')
					.filter(s -> !s.isSourceFileSymbol())
					.map(s -> s.name.toSafePackageName())
				);
		}

		// global symbols are prefixed with 'global' package
		/*
		var isGlobal = access.match(Global(_));
		if (isGlobal) {
			pack.push('global');
		}

		for (parentSymbol in TsSymbolTools.getSymbolParents(symbol)) {
			// handle special names
			if (!~/^__\w/.match(parentSymbol.name)) { // skip special names (like '__global')
				if (parentSymbol.flags & SymbolFlags.Module != 0) {
					if (TsSymbolTools.isSourceFileSymbol(parentSymbol)) {
						// @! need special handling of source file paths to remove prefix
					} else {
						pack = pack.concat(convertFilePathToHaxePackage(parentSymbol.name));
					}
				} else {
					log.error('Symbol parent was not a module in <b>generateHaxePackagePath()</>', parentSymbol);
					debug();
				}
			}
		}
		*/

		return pack;
	}

	function generateHaxeTypeName(symbol: Symbol, access: SymbolAccess): String {
		return symbol.escapedName.toSafeTypeName();
	} 

	function getAccess(symbol: Symbol): Array<SymbolAccess> {
		var accessArray = symbolAccessMap.get(symbol.getId());
		return accessArray != null ? accessArray : [Inaccessible];
	}

	function walkReferencedSourceFiles(sourceFile: SourceFile, onSourceFile: (SourceFile) -> Void) {
		onSourceFile(sourceFile);

		// include tripple-slash referenced sourceFiles
		for (fileRef in sourceFile.referencedFiles) {
			var referenceSourceFile = program.getSourceFileFromReference(sourceFile, fileRef);
			if (referenceSourceFile != null) {
				walkReferencedSourceFiles(referenceSourceFile, onSourceFile);
			}
		}
	}
	
	/**
		Walks key symbols that have the following flags:
			- Type
			- Alias
			- Variable
			- Function
			- Module

		It **does not** walk into types, or explore type information. For example, it will not walk class fields or the type in this declaration `const X: Type;`

		If a symbol as multiple matching flags, multiple callbacks will fire with the same symbol

		The input symbol will be walked

		`accessChain` represents that path to traverse to reach the symbol and it includes the symbol itself.

		For example, consder the symbol `EventEmitter` in node.js

		```typescript
		declare module "events" {
			class internal extends NodeJS.EventEmitter { }

			namespace internal {
				class EventEmitter extends internal { }
			}

			export = internal;
		}
		```

		While the symbol's parent path is [Module("events"), internal, EventEmitter], the accessChain is [Module("events"), EventEmitter]
	**/
	function walkDeclarationSymbols(symbol: Symbol, onSymbol: (Symbol, accessChain: ReadOnlyArray<Symbol>) -> Void, ?accessChain: ReadOnlyArray<Symbol>, depth: Int = 0) {
		accessChain = accessChain != null ? accessChain : [symbol];

		// prevent cycles by terminating if the current symbol appears in the parent access chain
		for (i in 0...accessChain.length - 1) {
			if (accessChain[i] == symbol) {
				return;
			}
		}

		// explicitly ignored symbols
		var ignoredSymbolFlags = SymbolFlags.ExportStar;

		// log.log('${[for (i in 0...depth) '\t'].join('')}<b>walkDeclarationSymbols()</b> <yellow>${accessChain.map(s -> s.name)}</>', symbol);

		// handle module replacement: `export =`, for example, the module symbol
		// `declare module "module" { export = Class; }`
		// will be replaced with `Class`
		if (symbol.flags & SymbolFlags.Module != 0) {
			// internal method used to resolve `export =` modules
			var resolvedSymbol = tc.resolveExternalModuleSymbol(symbol);

			if (resolvedSymbol != symbol) {
				// accessChain remains the same, we access the `export = symbol through the module symbol
				// log.log('<magenta>Module <b>${symbol.name} ${symbol.getFlagsInfo()}</b> mapped via `<i>export =</>` to <b>${resolvedSymbol.name} ${resolvedSymbol.getFlagsInfo()}</b></>', symbol);
				walkDeclarationSymbols(resolvedSymbol, onSymbol, accessChain, depth);
				return;
			}
		}

		var handled = symbol.flags & ignoredSymbolFlags != 0;

		if (symbol.flags & SymbolFlags.Alias != 0) {
			handled = true;
			onSymbol(symbol, accessChain);
			var aliasedSymbol = tc.getAliasedSymbol(symbol);
			walkDeclarationSymbols(aliasedSymbol, onSymbol, accessChain.concat([aliasedSymbol]), depth + 1);
		}

		if (symbol.flags & (SymbolFlags.Type | SymbolFlags.Variable | SymbolFlags.Function | SymbolFlags.Property) != 0) {
			// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias |
			// FunctionScopedVariable | BlockScopedVariable | Function | Property
			handled = true;
			onSymbol(symbol, accessChain);
		}

		if (symbol.flags & SymbolFlags.Module != 0) {
			// ValueModule | NamespaceModule
			handled = true;
			onSymbol(symbol, accessChain);

			var moduleMembers: Array<Symbol> = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.ModuleMember != 0);
			for (moduleExport in moduleMembers) {
				walkDeclarationSymbols(moduleExport, onSymbol, accessChain.concat([moduleExport]), depth + 1);
			}
		}

		if (!handled) {
			log.warn('Symbol was not handled in <b>walkDeclarationSymbols()</>', symbol);
		}
	}

	function convertTypeSymbol(symbol: Symbol) {
		// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
		// type symbols are mutually exclusive so we can return after converting the first match

		var pos = TsSymbolTools.getSymbolPosition(symbol);

		if (symbol.flags & (SymbolFlags.Class | SymbolFlags.Interface) != 0) {
			for (access in getAccess(symbol)) {
				var superClass = null; // @! todo
				var interfaces = []; // @! todo
				var typeParams = []; // @! todo
				var isInterface = symbol.flags & SymbolFlags.Interface != 0;

				var hxClass: HaxeModule = {
					pack: generateHaxePackagePath(symbol, access),
					name: generateHaxeTypeName(symbol, access),
					fields: [],
					kind: TDClass(superClass, interfaces, isInterface, false),
					isExtern: true,
					params: typeParams,
					doc: getDoc(symbol),
					meta: isInterface ? [] : [access.toAccessMetadata()],
					pos: pos,
					subTypes: [],
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}

				saveHaxeModule(hxClass, symbol, access);
			}
			return;
		}

		if (symbol.flags & SymbolFlags.Enum != 0) {
			for (access in getAccess(symbol)) {
				// a ConstEnum does not exist at runtime
				var isCompileTimeEnum = symbol.flags & SymbolFlags.ConstEnum != 0;
				
				var hxEnumType = TsSymbolTools.getComplexTypeOfEnumSymbol(symbol, tc);
				
				var enumMembers = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.EnumMember != 0);
				var hxEnumFields: Array<Field> = enumMembers.map(s -> {
					var safeName = HaxeTools.toSafeIdent(s.escapedName);
					var nameChanged = s.escapedName != safeName;
					return ({
						name: safeName,
						pos: TsSymbolTools.getSymbolPosition(s),
						kind: FVar(null, isCompileTimeEnum ? HaxeTools.primitiveValueToExpr(tc.getConstantValue(cast s.valueDeclaration)) : null),
						doc: getDoc(s),
						meta: nameChanged ? [{name: ':native', params: [s.escapedName.toStringExpr(pos)], pos: pos}] : [],
					}: Field);
				});

				var hxEnumDef: HaxeModule = {
					pack: generateHaxePackagePath(symbol, access),
					name: generateHaxeTypeName(symbol, access),
					kind: TDAbstract(hxEnumType, [hxEnumType], [hxEnumType]),
					isExtern: true,
					fields: hxEnumFields,
					doc: getDoc(symbol),
					meta: (isCompileTimeEnum ? [] : [access.toAccessMetadata()]).concat([{name: ':enum', pos: pos}]),
					pos: pos,
					subTypes: [],
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}
				
				saveHaxeModule(hxEnumDef, symbol, access);
			}
			return;
		}

		if (symbol.flags & SymbolFlags.TypeAlias != 0) {
			for (access in getAccess(symbol)) {
				var typeAliasDeclaration: Null<TypeAliasDeclaration> = cast symbol.getDeclarationsArray().filter(node -> node.kind == SyntaxKind.TypeAliasDeclaration)[0];
				if (typeAliasDeclaration != null) {
					// @! typeParameters?
					var hxAliasType: ComplexType = typeNodeToComplexType(typeAliasDeclaration.type, access); 
					
					var hxTypeDef: HaxeModule = {
						pack: generateHaxePackagePath(symbol, access),
						name: generateHaxeTypeName(symbol, access),
						fields: [],
						kind: TDAlias(hxAliasType),
						doc: getDoc(symbol),
						pos: pos,
						subTypes: [],
						tsSymbol: symbol,
						tsSymbolAccess: access,
					}

					saveHaxeModule(hxTypeDef, symbol, access);
				} else {
					log.error('TypeAlias symbol did not have a TypeAliasDeclaration', symbol);
				}
			}
			return;
		}

		log.error('Symbol not a handled <b>convertTypeSymbol()</>', symbol);
	}

	function saveHaxeModule(module: HaxeModule, symbol: Symbol, access: SymbolAccess) {
		var path = getHaxeModuleKey(module.pack, module.name);

		var existingModule = generatedModules.get(path);
		if (existingModule != null) {
			log.warn('<b>saveHaxeModule():</> Module <b>"$path"</> has already been generated once and will be overwritten');
			log.warn('\t Existing module <yellow,b>${existingModule.tsSymbolAccess.toString()}</>', existingModule.tsSymbol);
			log.warn('\t Overwriting module <yellow,b>${access.toString()}</>', symbol);
			log.warn('\t All access ' + getAccess(symbol).map(s -> s.toString()));
		}

		if (generatedModules.exists(path)) {
			debug();
		}

		generatedModules.set(path, module);
	}

	/**
		Given a path, return an array of haxe packages
		`./path/to/file.js` -> `path.to.file_js`
	**/
	function convertFilePathToHaxePackage(path: String) {
		return Path.normalize(path)
			.split('/')
			.filter(s -> s != '')
			.map(s -> s.toSafePackageName());
	}

	function getDoc(symbol: Symbol) {
		return symbol.getDocumentationComment(tc).map(s -> s.text.trim()).join('\n\n');
	}

	/**
		`accessContext` is the symbol access path for the symbol that contains this type reference
		This is required because if we're in a Global access context, type references should prefer global access (and modular context should prefer modular access).
		For example, in node.js there's a type `EventEmitter` that has both global (`NodeJS.EventEmitter` and modular access `require("event").EventEmitter`)
		If `EventEmitter` is referenced by another globally accessible type, then this method should return the global haxe type, and same logic for modular
	**/
	function typeNodeToComplexType(node: TypeNode, accessContext: SymbolAccess): ComplexType {
		// @! todo: very WIP
		var type = tc.getTypeFromTypeNode(node);
		return HaxePrimitives.any;
		
		// if (type.symbol != null && type.flags & SymbolFlags.Type != 0) {
		// 	var packagePath = generateHaxePackagePath(type.symbol);
		// 	return TPath({
		// 		pack: packagePath,
		// 		name: generateHaxeTypeName(type.symbol)
		// 	});
		// } else {
		// 	log.error('Could not convert ts TypeNode to haxe ComplexType', node);
		// 	return HaxePrimitives.any;
		// }
	}

	function normalizeModuleName(moduleName: String) {
		// replace backslashes with forward slashes to normalize for windows paths
		moduleName.replace('\\', '/');
		var moduleNameParts = moduleName.split('/');
		// remove @types prefix
		if (moduleNameParts[0] == '@types' && moduleNameParts.length > 1) {
			moduleNameParts.shift();
		}
		return moduleNameParts.join('/');
	}

	function symbolAccessAppendSymbol(access: SymbolAccess, symbol: Symbol): SymbolAccess {
		var symbolChain = access.getSymbolChain();
		// check if an existing symbol aliases to this symbol
		for (i in 0...symbolChain.length) {
			var existingSymbol = symbolChain[i];
			// matched with a symbol already in the path
			if (existingSymbol.flags & SymbolFlags.Alias != 0 && tc.getAliasedSymbol(existingSymbol) == symbol) {
				// return with trimmed symbol chain
				return switch access {
					case AmbientModule(m, s): AmbientModule(m, s.slice(0, i + 1));
					case ExportModule(m, f, s): ExportModule(m, f, s.slice(0, i + 1));
					case Global(s): Global(s.slice(0, i + 1));
					case Inaccessible: Inaccessible;
				}
			}
		}

		if (TsSymbolTools.isSourceFileSymbol(symbol)) {
			return switch access {
				case ExportModule(moduleName, sourceFileSymbol, _):
					if (symbol != sourceFileSymbol) {
						log.error('Cannot change symbol access module from <b>ExportModule($moduleName, ${sourceFileSymbol.name})</> to ExportModule', symbol);
					}
					// clear identifier path because the root has been replaced
					ExportModule(moduleName, sourceFileSymbol, []);
				case AmbientModule(path, _):
					log.error('Cannot change symbol access from <b>AmbientModule($path)</> to ExportModule', symbol);
					access;
				case Global(_):
					log.error('Cannot change symbol access from global to module', symbol);
					access;
				case Inaccessible:
					// making accessible via the sourceFile
					ExportModule(symbol.name, symbol, []);
			}
		} else if (TsSymbolTools.isExternalModuleSymbol(symbol)) {
			return switch access {
				case ExportModule(rootModuleName, rootSourceFileSymbol, _):
					log.error('Cannot change symbol access from <b>ExportModule($rootModuleName, ${rootSourceFileSymbol.name})</> to <b>AmbientModule("${symbol.name}")</>', symbol);
					access;
				case AmbientModule(_):
					// replace ambient module with a new one (we assume nested ambient modules is not possible)
					log.warn('Nested ambient modules should be impossible. This might indicate an internal error', symbol);
					AmbientModule(symbol.name, []);
				case Global(_):
					// change from global access to ambient module access
					AmbientModule(symbol.name, []);
				case Inaccessible:
					// make accessible via the ambient module
					AmbientModule(symbol.name, []);
			}
		} else {
			// handle special symbols
			if (symbol.flags & SymbolFlags.Alias != 0) {
				var aliasedSymbol = tc.getAliasedSymbol(symbol);

				// check if this symbol aliases to a sourceFileSymbol
				if (TsSymbolTools.isSourceFileSymbol(aliasedSymbol)) {
					return symbolAccessAppendSymbol(access, aliasedSymbol);
				}
			}

			// check if this symbol is globally available, in which case, set root to Global
			// otherwise add an identifier to the chain
			var symbolParent =  TsSymbolTools.getSymbolParent(symbol);
			return if (symbolParent != null && symbolParent.name == InternalSymbolName.Global) {
				Global([]);
			} else {
				// append to symbol chain
				return switch access {
					case AmbientModule(m, s): AmbientModule(m, s.concat([symbol]));
					case ExportModule(m, f, s): ExportModule(m, f, s.concat([symbol]));
					case Global(s): Global(s.concat([symbol]));
					case Inaccessible: Inaccessible;
				}
			}
		}
	}

	function getSourceFileModuleName(sourceFile: SourceFile): String {
		return if (sourceFile.moduleName != null) {
			sourceFile.moduleName;
		} else {
			// @! todo: determine minimal module import from fileName
			// i.e. node_modules/three/src/example.d.ts -> three/src/example
			// maybe helpful // untyped Ts.convertToRelativePath(sourceFile.resolvedFileName, host.getCurrentDirectory(), fileName -> host.getCanonicalFileName(fileName));
			sourceFile.fileName;
		}
	}

}

/**
	As we traverse the symbol tree we keep track of the symbol path so we can generate runtime-access metadata like @:native and @:jsRequire
	SymbolAccess represents the complete path to a symbol (including the symbol itself and if module import is required)
**/
enum SymbolAccess {
	AmbientModule(modulePath: String, symbolChain: ReadOnlyArray<Symbol>);
	ExportModule(moduleName: String, sourceFileSymbol: Symbol, symbolChain: ReadOnlyArray<Symbol>);
	Global(symbolChain: ReadOnlyArray<Symbol>);
	Inaccessible;
}

class SymbolAccessTools {
	
	static public function getSymbolChain(access: SymbolAccess) {
		return switch access {
			case AmbientModule(_, symbolChain), ExportModule(_, _, symbolChain), Global(symbolChain): symbolChain;
			case Inaccessible: [];
		}
	}

	static public function getIdentifierChain(access: SymbolAccess): Array<String> {
		return getSymbolChain(access).filter(s -> switch s.name {
			case InternalSymbolName.ExportEquals: false;
			default: true;
		}).map(s -> s.name);
	}

	static public function toAccessMetadata(access: SymbolAccess): MetadataEntry {
		var pos = getPosition(access);
		var identifierChain = access.getIdentifierChain();
		return switch access {
			case AmbientModule(path, _) | ExportModule(path, _): {
				name: ':jsRequire',
				params: [path.unwrapQuotes().toStringExpr(pos)].concat(
					identifierChain.length > 0 ? [identifierChain.join('.').toStringExpr(pos)] : []
				),
				pos: pos,
			}
			case Global(_): {
				name: ':native',
				params: [identifierChain.join('.').toStringExpr(pos)],
				pos: pos,
			}
			case Inaccessible: {
				// this type cannot be reached directly in javascript
				// there's no core metadata for this
				name: 'tsInaccessible',
				pos: pos,
			}
		}
	}

	static function getPosition(access: SymbolAccess): Position {
		return null;
	}

	/**
		String representation, useful for debugging (not valid syntax)
	**/
	static public function toString(access: SymbolAccess) {
		var identifierChain = getIdentifierChain(access);
		return switch access {
			case AmbientModule(path, _): ['require($path)'].concat(identifierChain).join('.');
			case ExportModule(moduleName, _): ['require("$moduleName")'].concat(identifierChain).join('.');
			case Global(_): '::${identifierChain.join('.')}';
			case Inaccessible: '*Inaccessible*';
		}
		
		var parts = new Array<String>();
		switch access {
			case AmbientModule(path, _): parts.push('require($path)');
			case ExportModule(moduleName, _): parts.push('require("$moduleName")');
			case Global(_): parts.push('::');
			case Inaccessible: parts.push('*Inaccessible*');
		}
		return parts.concat(getIdentifierChain(access)).join('.');
	}

}

class HaxePrimitives {
	static public final string: ComplexType = TPath({pack: [], name: 'String'});
	static public final float: ComplexType = TPath({pack: [], name: 'Float'});
	static public final int: ComplexType = TPath({pack: [], name: 'Int'});
	static public final any: ComplexType = TPath({pack: [], name: 'Any'});
	static public final void: ComplexType = TPath({pack: [], name: 'Void'});
}

typedef ConvertedTypeDefinition = TypeDefinition & {
	tsSymbol: Symbol,
	tsSymbolAccess: SymbolAccess,
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

	**Symbols**
	In the typescript compiler, declarations are grouped into Symbols. A Symbol can have 3 kinds of declaration, as a Type, a Variable/Function and a Module.
	For example, the following declarations are grouped into one symbol with the name 'Example'
	```typescript
	declare const Example: string;    // Value named X

	declare type Example = number;  // Type named X

	declare namespace Example {     // Namespace named X  
				type Y = string;  
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
**/