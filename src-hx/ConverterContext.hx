import typescript.ts.CompilerHost;
import typescript.ts.Program;
import typescript.ts.SourceFile;
import haxe.ds.ReadOnlyArray;
import haxe.macro.Expr;
import js.Lib.debug;
import tool.HaxeTools;
import typescript.Ts;
import typescript.ts.CompilerOptions;
import typescript.ts.InternalSymbolName;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.SyntaxKind;
import typescript.ts.TypeAliasDeclaration;
import typescript.ts.TypeChecker;
import typescript.ts.TypeNode;
import typescript.ts.VariableDeclaration;

using tool.TsProgramTools;
using tool.TsSymbolTools;
using tool.StringTools;
using ConverterContext.SymbolAccessTools;
using StringTools;


@:expose
@:nullSafety
class ConverterContext {

	public final entryPointModuleId: String;
	public final generated = {
		modular: new Map<String, HaxeModule>(),
		global: new Map<String, HaxeModule>()
	}
	final log: Log;
	final tc: TypeChecker;
	final host: CompilerHost;
	final program: Program;

	// symbol access map is filled during an initial pass over the program
	// the access path for key-symbols such as types are stored so we can retrieve them later when we have a type-reference
	final symbolAccessMap = new Map<Int, Array<SymbolAccess>>();

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
					sourceFile.moduleName = moduleName != null ? normalizeModuleName(moduleName) : null;
					moduleRootSourceFiles.push(sourceFile);
				} else {
					log.error('Internal error: failed get source file for file <b>"$resolvedFileName"</> (module: <b>"$moduleName"</>)');
				}
			} else {
				log.error('Failed to find referenced module <b>${moduleReference.failedLookupLocations[0]}</b>');
			}
		}

		// populate symbol access map
		for (moduleSourceFile in moduleRootSourceFiles) {
			walkReferencedSourceFiles(moduleSourceFile, (sourceFile) -> {
				var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);
				log.log(sourceFile, sourceFileSymbol);
			
				var sourceFileAccess = if (sourceFileSymbol != null) {
					ExportModule(getSourceFileModulePath(sourceFile), sourceFileSymbol, []);
				} else {
					Global([]);
				}

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

		// convert symbols
		for (moduleSourceFile in moduleRootSourceFiles) {
			walkReferencedSourceFiles(moduleSourceFile, (sourceFile) -> {
				for (symbol in program.getExportsOfSourceFile(sourceFile)) {
					walkDeclarationSymbols(symbol, (symbol, accessChain) -> {
						if (symbol.flags & SymbolFlags.Type != 0) {
							// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
							generateTypeSymbol(symbol);
						}

						if (symbol.flags & (SymbolFlags.Variable | SymbolFlags.Function) != 0) {
							// FunctionScopedVariable | BlockScopedVariable
						}
					});
				}
			});
		}

		// **these are accessible from the normal source file rules**

		/**
			@! idea:

			# Create symbol access map
			for each module {
				walk declaration symbols, create a map for each symbol's access path
			}

			# Generate haxe modules
			for each module {
				convert declarations
					at each **type-reference** check the symbol access map
					if no symbol is found, the symbol is considered _Inaccessible_ 
					add symbol to conversion queue
			}

			# While generating haxe modules
			track referenced symbols in typeNodeToComplexType
				something like `startReferenceTracking()` and `completeReferenceTracking() -> References`

			# With tracked references associated with each module, we can create a list of dependencies for each module

			generated -> generated {
				moduleId {
					modular,
					global,
				}
			}

			----

			- Why don't we just create modules for all symbols up-front, that way we don't need the access-path later
				- When we have a type-reference we assume the module exists at the generated type path
				- **What happens when an inaccessible type is referenced? How do we know we need to create it?**
					- _Are there any actually inaccessible types?_ What's an example?
						-> Yes mxgraph types
			- This way type-reference never creates a type that has an access-path
				- It either gets the type if it already 

		**/
	}

	function setAccess(symbol: Symbol, access: SymbolAccess) {
		var accessArray = symbolAccessMap.get(symbol.getId());
		if (accessArray == null) {
			accessArray = [];
			symbolAccessMap.set(symbol.getId(), accessArray);
		}
		accessArray.push(access);
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
	**/
	function walkDeclarationSymbols(symbol: Symbol, onSymbol: (Symbol, accessChain: ReadOnlyArray<Symbol>) -> Void, ?accessChain: ReadOnlyArray<Symbol>, depth: Int = 0) {
		accessChain = accessChain != null ? accessChain : [];

		// explicitly ignored symbols
		var ignoredSymbolFlags = SymbolFlags.ExportStar;

		// handle module replacement: `export =`, for example, the module symbol
		// `declare module "module" { export = Class; }`
		// will be replaced with `Class`
		if (symbol.flags & SymbolFlags.Module != 0) {
			// internal method used to resolve `export =` modules
			var resolvedSymbol = untyped tc.resolveExternalModuleSymbol(symbol);

			if (resolvedSymbol != symbol) {
				accessChain = accessChain.concat([symbol]);
				Console.log('<b,magenta>Symbol resolved</>');
				log.log('\t', symbol);
				log.log('\t', resolvedSymbol);
				
				walkDeclarationSymbols(resolvedSymbol, onSymbol, accessChain, depth + 1);
				return;
			}
		}

		log.log('${[for (i in 0...depth) '\t'].join('')}<b>walkDeclarationSymbols()</b> <yellow>${accessChain.map(s -> s.name)}</> <green>${generateHaxePackagePath(symbol)}</>', symbol);

		var handled = symbol.flags & ignoredSymbolFlags != 0;

		if (symbol.flags & SymbolFlags.Alias != 0) {
			handled = true;
			onSymbol(symbol, accessChain);
			var aliasedSymbol = tc.getAliasedSymbol(symbol);
			walkDeclarationSymbols(aliasedSymbol, onSymbol, accessChain.concat([symbol]), depth + 1);
		}

		if (symbol.flags & (SymbolFlags.Type | SymbolFlags.Variable | SymbolFlags.Function) != 0) {
			// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
			handled = true;
			onSymbol(symbol, accessChain);
		}

		if (symbol.flags & SymbolFlags.Module != 0) {
			// ValueModule | NamespaceModule
			handled = true;
			onSymbol(symbol, accessChain);

			var exportAccessChain = accessChain.concat([symbol]);
			var moduleMembers: Array<Symbol> = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.ModuleMember != 0);
			for (moduleExport in moduleMembers) {
				walkDeclarationSymbols(moduleExport, onSymbol, exportAccessChain, depth + 1);
			}
		}

		if (!handled) {
			log.warn('Symbol was not handled in <b>walkDeclarationSymbols()</>', symbol);
		}
	}

	function generateTypeSymbol(symbol: Symbol) {
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
					pack: generateHaxePackagePath(symbol),
					name: generateHaxeTypeName(symbol),
					fields: [],
					kind: TDClass(superClass, interfaces, isInterface, false),
					isExtern: true,
					params: typeParams,
					doc: getDoc(symbol),
					meta: isInterface ? [] : [access.toAccessMetadata(symbol)],
					pos: pos,
					subTypes: [],
				}

				saveHaxeModule(hxClass, access);
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
						meta: nameChanged ? [{name: ':native', params: [HaxeTools.stringExpr(s.escapedName)], pos: pos}] : [],
					}: Field);
				});

				var hxEnumDef: HaxeModule = {
					pack: generateHaxePackagePath(symbol),
					name: generateHaxeTypeName(symbol),
					kind: TDAbstract(hxEnumType, [hxEnumType], [hxEnumType]),
					isExtern: true,
					fields: hxEnumFields,
					doc: getDoc(symbol),
					meta: (isCompileTimeEnum ? [] : [access.toAccessMetadata(symbol)]).concat([{name: ':enum', pos: pos}]),
					pos: pos,
					subTypes: [],
				}
				
				saveHaxeModule(hxEnumDef, access);
			}
			return;
		}

		if (symbol.flags & SymbolFlags.TypeAlias != 0) {
			for (access in getAccess(symbol)) {
				var typeAliasDeclaration: Null<TypeAliasDeclaration> = cast symbol.declarations.filter(node -> node.kind == SyntaxKind.TypeAliasDeclaration)[0];
				if (typeAliasDeclaration != null) {
					// @! typeParameters?
					var hxAliasType: ComplexType = typeNodeToComplexType(typeAliasDeclaration.type); 
					
					var hxTypeDef: HaxeModule = {
						pack: generateHaxePackagePath(symbol),
						name: generateHaxeTypeName(symbol),
						fields: [],
						kind: TDAlias(hxAliasType),
						doc: getDoc(symbol),
						pos: pos,
						subTypes: [],
					}

					saveHaxeModule(hxTypeDef, access);
				} else {
					log.error('TypeAlias symbol did not have a TypeAliasDeclaration', symbol);
				}
			}
			return;
		}

		log.error('Symbol not a handled <b>convertTypeSymbol()</>', symbol);
	}

	function saveHaxeModule(module: HaxeModule, access: SymbolAccess) {
		var path = module.pack.concat([module.name]).join('.');
		var moduleMaps = switch access {
			case AmbientModule(_): [generated.modular];
			case ExportModule(_): [generated.modular];
			case Global(_): [generated.global];
			case Inaccessible: [generated.global, generated.modular];
		}

		for (moduleMap in moduleMaps) {
			if (moduleMap.exists(path)) {
				// log.error('<b>saveHaxeModule():</> Module <b>"$path"</> has already been generated once and will be overwritten');
				// log.error('\t' + haxe.Json.stringify(cast moduleMap.get(path)));
				// debug();
			}

			moduleMap.set(path, module);
		}
	}

	function generateHaxeTypeName(symbol: Symbol): String {
		return HaxeTools.toSafeTypeName(symbol.escapedName);
	}

	function generateHaxePackagePath(symbol: Symbol): Array<String> {
		var pack = new Array<String>();

		// prefix the module name (if it's a path, use just the last part)
		pack.push(HaxeTools.toSafePackageName(haxe.io.Path.withoutDirectory(entryPointModuleId)));

		for (parentSymbol in TsSymbolTools.getSymbolParents(symbol)) {
			// handle special names
			if (!~/^__\w/.match(parentSymbol.name)) { // skip special names (like '__global')
				if (parentSymbol.flags & SymbolFlags.Module != 0) {
					if (TsSymbolTools.isSourceFileSymbol(parentSymbol)) {
						// @! need special handling of source file paths to remove prefix
					} else {
						pack = pack.concat(pathToHaxePackage(parentSymbol.name));
					}
				} else {
					log.error('Symbol parent was not a module in <b>generateHaxePackagePath()</>', parentSymbol);
					debug();
				}
			}
		}


		// we prepend the module path to avoid collisions if the symbol is exported from multiple modules
		// Babylonjs's type definition are a big issue for this and many of the module paths do not actually exist in babylon.js at runtime
		/*
		switch accessPath.root {
			case AmbientModule(path):
				var pathPack = pathToHaxePackage(path);
				// if the first part of the path is the same as the module id, don't add to avoid duplicates (like babylonjs.babylonjs.cameras)
				if (pathPack[0] == pack[0]) {
					pathPack.shift();
				}
				pack = pack.concat(pathPack);
			default:
		}

		pack = pack.concat(accessPath.getIdentifierChain().map(s -> HaxeTools.toSafeIdent(s).toLowerCase()));

		*/

		return pack;
	}

	function pathToHaxePackage(path: String) {
		return haxe.io.Path.normalize(path).split('/').filter(s -> s != '').map(s -> HaxeTools.toSafePackageName(s));
	}

	function getDoc(symbol: Symbol) {
		return symbol.getDocumentationComment(tc).map(s -> s.text.trim()).join('\n\n');
	}

	function typeNodeToComplexType(node: TypeNode): ComplexType {
		// @! todo: very WIP
		var type = tc.getTypeFromTypeNode(node);
		return HaxePrimitives.any;
		
		if (type.symbol != null && type.flags & SymbolFlags.Type != 0) {
			var packagePath = generateHaxePackagePath(type.symbol);
			return TPath({
				pack: packagePath,
				name: generateHaxeTypeName(type.symbol)
			});
		} else {
			log.error('Could not convert ts TypeNode to haxe ComplexType', node);
			return HaxePrimitives.any;
		}
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
					AmbientModule(symbol.name, []);
				case Global(_):
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

	function getSourceFileModulePath(sourceFile: SourceFile): String {
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

	static public function toAccessMetadata(access: SymbolAccess, symbol: Symbol): MetadataEntry {
		var pos = TsSymbolTools.getSymbolPosition(symbol);
		var identifierPath = access.getIdentifierChain().concat([symbol.escapedName]).join('.');
		return switch access {
			case AmbientModule(path, _) | ExportModule(path, _): {
				name: ':jsRequire',
				params: [{
					expr: EConst(CString(path.unwrapQuotes())),
					pos: pos,
				}, {
					expr: EConst(CString(identifierPath)),
					pos: pos,
				}],
				pos: pos,
			}
			case Global(_): {
				name: ':native',
				params: [{
					expr: EConst(CString(identifierPath)),
					pos: pos,
				}],
				pos: pos,
			}
			case Inaccessible: {
				// this type cannot be reached directly in javascript
				// there's no core metadata for this
				name: 'jsInaccessible',
				pos: pos,
			}
		}
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

typedef HaxeModule = TypeDefinition & {
	subTypes: Array<TypeDefinition>,
}

/**
	Notes
	-----

	**SymbolAccess**
	The reason we track symbol access rather than always using the sourceFile that the symbol is defined in is because doing so can lead to runtime errors in some cases
	For example, the following typescript program fails at both runtime and compiletime:

	```typescript
	// import via module root
	import * as THREE from 'three';
	console.log(new THREE.Quaternion(1,2,3,4));
	// import via source file that the symbol is defined in
	import { Quaternion } from './node_modules/three/src/math/Quaternion'; // import { _Math } from './Math.js'; SyntaxError: Unexpected token {
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