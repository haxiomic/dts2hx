import haxe.ds.ReadOnlyArray;
import haxe.macro.Expr;
import js.Lib.debug;
import tool.HaxeTools;
import tool.TsProgramTools;
import tool.TsSymbolTools;
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

using StringTools;
using tool.StringTools;


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
	// final markedSymbols = new Map<Int, Symbol>();

	public function new(moduleName: String, entryPointFilePath: String, compilerOptions: CompilerOptions, ?log_: Log) {
		// this will be used as the argument to require()
		this.log = log_ != null ? log_ : new Log();
		this.entryPointModuleId = inline normalizeModuleName(moduleName);
		
		log.log('<green>Converting module: <b>$entryPointModuleId</b>');

		var host = Ts.createCompilerHost(compilerOptions);
		var program = Ts.createProgram([entryPointFilePath], compilerOptions, host);
		this.tc = program.getTypeChecker();

		log.diagnostics(TsProgramTools.getAllDiagnostics(program));

		var entryPointSourceFile = program.getSourceFile(entryPointFilePath);

		if (entryPointSourceFile == null) {
			throw 'Failed to get entry-point source file';
		}

		// get all `/// <reference type="$type">` module references
		var referencedModules = TsProgramTools.resolveAllTypeReferenceDirectives(program, host);

		// null if nothing is exported (i.e ambient namespaces and modules)
		// "In TypeScript, just as in ECMAScript 2015, any file containing a top-level import or export is considered a module. Conversely, a file without any top-level import or export declarations is treated as a script whose contents are available in the global scope"
		var entryPointModuleSymbol = tc.getSymbolAtLocation(entryPointSourceFile);

		if (entryPointModuleSymbol != null) {
			log.log('entryPointModuleSymbol', entryPointModuleSymbol);
		}

		var accessPath = new SymbolAccessPath(log, tc, entryPointModuleSymbol != null ? ExportModule(entryPointModuleId, entryPointModuleSymbol) : Global);

		log.log('-- Global Symbols --');
		for (symbol in TsSymbolTools.getDeclarationSymbolsInSourceFile(tc, entryPointSourceFile)) {
			convertSymbolDeclarations(symbol, accessPath);
		}

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
		**/
	}

	/*
	function markSymbol(symbol: Symbol) {
		var id: Int = Std.int(Ts.getSymbolId(symbol));
		var alreadyMarked = markedSymbols.exists(id);
		markedSymbols.set(id, symbol);
		return alreadyMarked;
	}
	*/

	function convertSymbolDeclarations(symbol: Symbol, accessPath: SymbolAccessPath, depth: Int = 0) {
		// log.log('${[for (i in 0...depth) '\t'].join('')}<yellow>${accessPath}</> <green>${generateHaxePackagePath(symbol)}</>', symbol);
		// markSymbol(symbol);

		// explicitly ignored symbols
		var ignoredSymbolFlags = SymbolFlags.Prototype;

		var handled = symbol.flags & ignoredSymbolFlags != 0;

		if (symbol.flags & SymbolFlags.Alias != 0) {
			handled = true;
			switch symbol.name {
				case InternalSymbolName.Default:
					// ignore export default because it's handled
				default:
					var aliasedSymbol = tc.getAliasedSymbol(symbol);
					var newAccessPath = accessPath.copyAndAddSymbol(symbol);
					convertSymbolDeclarations(aliasedSymbol, newAccessPath, depth + 1);
			}
		}

		if (symbol.flags & SymbolFlags.Type != 0) {
			// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
			handled = true;
			convertTypeSymbol(symbol, accessPath);
		}

		if (symbol.flags & (SymbolFlags.Variable | SymbolFlags.Function) != 0) {
			// FunctionScopedVariable | BlockScopedVariable
			// add to module class
			handled = true;
			// i.e. `const name: Type` or `function name(): Type`
			switch symbol.valueDeclaration.kind {
				case FunctionDeclaration: 
				case VariableDeclaration:
					var typeNode = (cast symbol.valueDeclaration: VariableDeclaration).type;
					if (typeNode != null) {
						var type = tc.getTypeFromTypeNode(typeNode);
						var typeSymbol = type.symbol;
						// how do we know what module this symbol belongs to?
						// @! what if we convert all type-reference modules first and create a symbol lookup?
						// ... in theory we could use this for access paths too, but it's not clear this is a good idea
						// var typeSourceFiles = typeSymbol.declarations.map(n -> n.getSourceFile());
						// convertSymbolDeclarations(typeSymbol, new SymbolAccessPath(log, tc, Global));
						debug();
					}
				default:
					log.warn('Unexpected declaration kind, expected <i>FunctionDeclaration</> or <i>VariableDeclaration</>', symbol.valueDeclaration);
			}
		}

		if (symbol.flags & SymbolFlags.Module != 0) {
			handled = true;
			// ValueModule | NamespaceModule
			var newAccessPath = accessPath.copyAndAddSymbol(symbol);
			var exports = tc.getExportsOfModule(symbol);
			for (moduleExport in exports) {
				convertSymbolDeclarations(moduleExport, newAccessPath, depth + 1);
			}
		}

		if (!handled) {
			log.warn('Symbol was not handled in <b>convertSymbolDeclarations()</>', symbol);
		}
	}

	function convertTypeSymbol(symbol: Symbol, accessPath: SymbolAccessPath): Null<HaxeModule> {
		// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
		// type symbols are mutually exclusive so we can return after converting the first match

		var pos = TsSymbolTools.getSymbolPosition(symbol);

		if (symbol.flags & (SymbolFlags.Class | SymbolFlags.Interface) != 0) {
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
				meta: isInterface ? [] : [getRuntimeAccessMetadata(symbol, accessPath)],
				pos: pos,
				subTypes: [],
			}

			saveHaxeModule(hxClass, accessPath);

			return hxClass;
		}

		if (symbol.flags & SymbolFlags.Enum != 0) {
			// a ConstEnum does not exist at runtime
			var isCompileTimeEnum = symbol.flags & SymbolFlags.ConstEnum != 0;
			
			var hxEnumType = TsSymbolTools.getComplexTypeOfEnumSymbol(symbol, tc);
			
			var enumMembers = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.EnumMember != 0);
			var hxEnumFields: Array<Field> = enumMembers.map(s -> {
				return ({
					name: s.escapedName,
					pos: TsSymbolTools.getSymbolPosition(s),
					kind: FVar(null, isCompileTimeEnum ? HaxeTools.primitiveValueToExpr(tc.getConstantValue(cast s.valueDeclaration)) : null),
					doc: getDoc(s),
				}: Field);
			});

			var hxEnumDef: HaxeModule = {
				pack: generateHaxePackagePath(symbol),
				name: generateHaxeTypeName(symbol),
				kind: TDAbstract(hxEnumType, [hxEnumType], [hxEnumType]),
				isExtern: true,
				fields: hxEnumFields,
				doc: getDoc(symbol),
				meta: (isCompileTimeEnum ? [] : [getRuntimeAccessMetadata(symbol, accessPath)]).concat([{name: ':enum', pos: pos}]),
				pos: pos,
				subTypes: [],
			}
			
			saveHaxeModule(hxEnumDef, accessPath);

			return hxEnumDef;
		}

		if (symbol.flags & SymbolFlags.TypeAlias != 0) {
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

				saveHaxeModule(hxTypeDef, accessPath);

				return hxTypeDef;
			} else {
				log.error('TypeAlias symbol did not have a TypeAliasDeclaration', symbol);
			}
		}

		log.error('Symbol not a handled <b>convertTypeSymbol()</>', symbol);

		return null;
	}

	function saveHaxeModule(module: HaxeModule, accessPath: SymbolAccessPath) {
		var path = module.pack.concat([module.name]).join('.');
		var moduleMaps = switch accessPath.root {
			case AmbientModule(_): [generated.modular];
			case ExportModule(_, _): [generated.modular];
			case Global: [generated.global];
			case Inaccessible: [generated.global, generated.modular];
		}

		for (moduleMap in moduleMaps) {
			if (moduleMap.exists(path)) {
				log.error('<b>saveHaxeModule():</> Module <b>"$path"</> has already been generated once and will be overwritten');
				log.error('\t' + haxe.Json.stringify(cast moduleMap.get(path)));
				debug();
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

	function getRuntimeAccessMetadata(symbol: Symbol, accessPath: SymbolAccessPath): MetadataEntry {
		var pos = TsSymbolTools.getSymbolPosition(symbol);
		var identifierPath = accessPath.getIdentifierChain().concat([symbol.escapedName]).join('.');
		return switch accessPath.root {
			case AmbientModule(path) | ExportModule(path, _): {
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
			case Global: {
				name: ':native',
				params: [{
					expr: EConst(CString(identifierPath)),
					pos: pos,
				}],
				pos: pos,
			}
			case Inaccessible: {
				name: 'inaccessible',
				pos: pos,
			}
		}
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

}

/**
	As we traverse the symbol tree we keep track of the symbol path so we can generate runtime-access metadata like @:native and @:jsRequire
**/
class SymbolAccessPath {

	public final root: SymbolAccessRoot;
	public final symbolChain: ReadOnlyArray<Symbol>;
	final log: Log;
	final tc: TypeChecker;

	public function new(log: Log, tc: TypeChecker, root: SymbolAccessRoot, ?symbolChain: ReadOnlyArray<Symbol>) {
		this.log = log;
		this.tc = tc;
		this.root = root;
		this.symbolChain = symbolChain != null ? symbolChain.copy() : [];
	}

	public function getIdentifierChain() {
		return symbolChain.filter(s -> switch s.name {
			case InternalSymbolName.ExportEquals: false;
			default: true;
		}).map(s -> s.name);
	}

	public function copy() {
		return new SymbolAccessPath(log, tc, root, symbolChain);
	}

	public function copyAndAddSymbol(symbol: Symbol) {
		// check if an existing symbol aliases to this symbol
		for (i in 0...symbolChain.length) {
			var existingSymbol = symbolChain[i];
			// matched with a symbol already in the path
			if (existingSymbol.flags & SymbolFlags.Alias != 0 && tc.getAliasedSymbol(existingSymbol) == symbol) {
				return new SymbolAccessPath(log, tc, root, symbolChain.slice(0, i + 1));
			}
		}

		if (TsSymbolTools.isSourceFileSymbol(symbol)) {
			return switch root {
				case ExportModule(rootModuleName, rootSourceFileSymbol):
					if (symbol != rootSourceFileSymbol) {
						log.error('Cannot change symbol access module from <b>ExportModule($rootModuleName, ${rootSourceFileSymbol.name})</> to ExportModule', symbol);
					}
					// clear identifier path because the root has been replaced
					new SymbolAccessPath(log, tc, root, []);
				case AmbientModule(path):
					log.error('Cannot change symbol access from <b>AmbientModule($path)</> to ExportModule', symbol);
					copy();
				case Global:
					log.error('Cannot change symbol access from global to module', symbol);
					copy();
				case Inaccessible:
					new SymbolAccessPath(log, tc, ExportModule(symbol.name, symbol), []);
			}
		} else if (TsSymbolTools.isExternalModuleSymbol(symbol)) {
			return switch root {
				case Global, Inaccessible:
					// replace global with ambient module
					new SymbolAccessPath(log, tc, AmbientModule(symbol.name), []);
				case ExportModule(rootModuleName, rootSourceFileSymbol):
					log.error('Cannot change symbol access from <b>ExportModule($rootModuleName, ${rootSourceFileSymbol.name})</> to <b>AmbientModule("${symbol.name}")</>', symbol);
					copy();
				case AmbientModule(path):
					log.error('Cannot change symbol access from <b>AmbientModule($path)</> to <b>AmbientModule(${symbol.name})</> because this implies nested modules', symbol);
					copy();
			}
		} else {
			// handle special symbols
			if (symbol.flags & SymbolFlags.Alias != 0) {
				var aliasedSymbol = tc.getAliasedSymbol(symbol);
				
				// check if this symbol aliases to a sourceFileSymbol
				if (TsSymbolTools.isSourceFileSymbol(aliasedSymbol)) {
					return copyAndAddSymbol(aliasedSymbol);
				}
			}

			// check if this symbol is globally available, in which case, set root to Global
			// otherwise add an identifier to the chain
			var symbolParent =  TsSymbolTools.getSymbolParent(symbol);
			return if (symbolParent != null && symbolParent.name == InternalSymbolName.Global) {
				new SymbolAccessPath(log, tc, Global, []);
			} else {
				new SymbolAccessPath(log, tc, root, symbolChain.concat([symbol]));
			}
		}
	}

	/**
		String representation, useful for debugging (not valid syntax)
	**/
	function toString() {
		var parts = new Array<String>();
		switch root {
			case AmbientModule(path): parts.push('require($path)');
			case ExportModule(moduleName, sourceFile): parts.push('require("$moduleName")');
			case Global: parts.push('::');
			case Inaccessible: parts.push('*Inaccessible*');
		}
		return parts.concat(getIdentifierChain()).join('.');
	}

}

enum SymbolAccessRoot {
	AmbientModule(path: String);
	ExportModule(moduleName: String, sourceFileSymbol: Symbol);
	Global;
	Inaccessible;
}

class HaxePrimitives {
	static public final string: ComplexType = TPath({pack: [], name: 'String'});
	static public final float: ComplexType = TPath({pack: [], name: 'Float'});
	static public final int: ComplexType = TPath({pack: [], name: 'Int'});
	static public final any: ComplexType = TPath({pack: [], name: 'Any'});
	static public final void: ComplexType = TPath({pack: [], name: 'Void'});
}

/**
	Notes
	-----

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
	````
**/