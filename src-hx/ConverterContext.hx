import haxe.EnumFlags;
import js.Lib.debug;
import tool.HaxeTools;
import tool.TsProgramTools;
import tool.TsSymbolTools;
import typescript.Ts;
import typescript.ts.CompilerOptions;
import typescript.ts.Program;
import typescript.ts.SourceFile;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.TypeChecker;

enum OutputType {
	Global;
	Modular;
}

@:expose
@:nullSafety
class ConverterContext {

	public final log: Log;
	final tc: TypeChecker;
	final outputFlags: EnumFlags<OutputType>;

	public function new(entryPointModuleId: String, entryPointFilePath: String, compilerOptions: CompilerOptions, outputFlags: EnumFlags<OutputType>, ?log_: Log) {
		this.outputFlags = outputFlags;
		this.log = log_ != null ? log_ : new Log();

		// entryPointModuleId may be a file reference like ./path/to/file.d.ts
		var rootPackage = entryPointModuleId
			.split('/')
			.filter(part -> ['@types', '.'].indexOf(part) == -1) // remove @types/ and '.'
			.map(part -> HaxeTools.toSafeIdent(part).toLowerCase());
		log.log('<green>Root Package: <b>${rootPackage.join('.')}</b> ($entryPointModuleId)</>');

		var host = Ts.createCompilerHost(compilerOptions);
		var program = Ts.createProgram([entryPointFilePath], compilerOptions, host);
		this.tc = program.getTypeChecker();

		log.diagnostics(TsProgramTools.getAllDiagnostics(program));

		var entryPointSourceFile = program.getSourceFile(entryPointFilePath);

		if (entryPointSourceFile == null) {
			throw 'TypeScript compiler API error – failed to get entry-point source file';
		}

		// Console.examine(entryPointSourceFile.referencedFiles);
		// Console.examine(entryPointSourceFile.libReferenceDirectives);
		// Console.examine(entryPointSourceFile.typeReferenceDirectives);
		// Console.examine(entryPointSourceFile.moduleName);

		// null if nothing is exported (i.e ambient namespaces and modules)
		// "In TypeScript, just as in ECMAScript 2015, any file containing a top-level import or export is considered a module. Conversely, a file without any top-level import or export declarations is treated as a script whose contents are available in the global scope"
		var entryPointModuleSymbol = tc.getSymbolAtLocation(entryPointSourceFile);

		if (entryPointModuleSymbol != null) {
			log.log('entryPointModuleSymbol', entryPointModuleSymbol);
			
			/*
			Console.log('-- getExportsOfModule --');
			for (symbol in tc.getExportsOfModule(entryPointModuleSymbol)) {
				log.log(symbol);
				if (symbol.flags & SymbolFlags.Alias != 0) {
					log.log('\t', tc.getAliasedSymbol(symbol));
				}
			}
			*/

			/*
			Console.log('-- globalExports --');
			if (entryPointModuleSymbol.globalExports != null) {
				entryPointModuleSymbol.globalExports.forEach((symbol, key) -> {
					log.log(key, symbol);
					if (symbol.flags & SymbolFlags.Alias != 0) {
						log.log('\t', tc.getAliasedSymbol(symbol));
					}
				});
			}
			*/
			
			/*
			Console.log('-- exports --');
			if (entryPointModuleSymbol.exports != null) {
				entryPointModuleSymbol.exports.forEach((symbol, key) -> {
					log.log(symbol);
					if (symbol.flags & SymbolFlags.Alias != 0) {
						log.log('\t', tc.getAliasedSymbol(symbol));
					}
				});
			}
			*/
		} else {
			// note: if we use try to use global symbols for an export module, the returned symbols seem to be malformed (sometimes symbol.flags = 0 for example)
		}

		var accessPath = new SymbolAccessPath(log, entryPointModuleSymbol != null ? ExportModule(entryPointModuleId, entryPointModuleSymbol) : Global);

		Console.log('-- Global Symbols --');
		for (symbol in getGlobalSymbolsInSourceFile(entryPointSourceFile)) {
			// log.log(symbol);
			// if (symbol.flags & SymbolFlags.Alias != 0) {
			// 	log.log('\t', tc.getAliasedSymbol(symbol));
			// }

			if (symbolHasDeclarations(symbol)) {
				convertSymbolDeclarations(symbol, accessPath);
			} else {
				log.warn('Symbol has no declarations – currently unhandled', symbol);
			}
		}

	}

	function symbolHasDeclarations(symbol: Symbol) {
		return symbol.declarations != null && symbol.declarations.length > 0;
	}

	function convertSymbolDeclarations(symbol: Symbol, accessPath: SymbolAccessPath) {
		log.log('convertSymbolDeclarations <yellow>${accessPath}</> <green>${generateHaxePackagePath(symbol)}</>', symbol);
		// copy accessPath so we don't edit an existing reference

		if (symbol.flags & SymbolFlags.Alias != 0) {
			var aliasedSymbol = tc.getAliasedSymbol(symbol);
			var newAccessPath = accessPath.copyAndAddSymbol(symbol);
			convertSymbolDeclarations(aliasedSymbol, newAccessPath);
		}

		if (symbol.flags & SymbolFlags.Module != 0) {
			// FunctionScopedVariable | BlockScopedVariable
			var newAccessPath = accessPath.copyAndAddSymbol(symbol);
			var exports = tc.getExportsOfModule(symbol);
			for (moduleExport in exports) {
				convertSymbolDeclarations(moduleExport, newAccessPath);
			}
		}
	}

	function getGlobalSymbolsInSourceFile(sourceFile: SourceFile) {
		// get all globally visible symbols and filter for those that have a declaration in the sourceFile
		return tc.getSymbolsInScope(sourceFile, 0xFFFFFF).filter(
			symbol -> {
				if (symbol.declarations != null) for (declaration in symbol.declarations)
					if (declaration.getSourceFile() == sourceFile)
						return true;
				return false;
			}
		).map(tc.getExportSymbolOfSymbol);
	}

	function generateHaxePackagePath(symbol: Symbol): Array<String> {
		var pack = new Array<String>();
		for (symbol in getSymbolParents(symbol)) {
			if (symbol.flags & SymbolFlags.Module != 0) {
				if (TsSymbolTools.isSourceFileSymbol(symbol)) {
					// @! need special handling of source file paths to remove prefix
				} else {
					var nameParts = symbol.name.split('/').map(s -> s);//HaxeTools.toSafeIdent(s).toLowerCase());
					pack = pack.concat(nameParts);
				}
			} else {
				log.error('Symbol parent was not a module in <b>generateHaxePackagePath</>', symbol);
			}
		}
		return pack;
	}

	function getSymbolRootParent(symbol: Symbol): Null<Symbol> {
		var rootParent: Null<Symbol> = null;
		var parentSymbol = getSymbolParent(symbol);
		while(parentSymbol != null) {
			rootParent = parentSymbol;
			parentSymbol = getSymbolParent(parentSymbol);
		}
		return rootParent;
	}

	function getSymbolParents(symbol: Symbol): Array<Symbol> {
		var parentChain = new Array<Symbol>();
		var currentSymbol: Null<Symbol> = symbol;
		while (currentSymbol != null) {
			currentSymbol = getSymbolParent(currentSymbol);
			if (currentSymbol != null) {
				parentChain.unshift(currentSymbol);
			}
		}
		return parentChain;
	}

	function getSymbolParent(symbol: Symbol): Null<Symbol> {
		return Reflect.field(symbol, 'parent');
	}

}

class SymbolAccessPath {

	final log: Log;
	final root: SymbolAccessRoot;
	final tsIdentifierPath: Array<Symbol>;

	public function new(log: Log, root: SymbolAccessRoot, ?tsIdentifierPath: Array<Symbol>) {
		this.log = log;
		this.root = root;
		this.tsIdentifierPath = tsIdentifierPath != null ? tsIdentifierPath.copy() : [];
	}

	public function copy() {
		return new SymbolAccessPath(log, root, tsIdentifierPath);
	}

	public function copyAndAddSymbol(symbol: Symbol) {
		if (TsSymbolTools.isSourceFileSymbol(symbol)) {
			return switch root {
				case ExportModule(rootModuleName, rootSourceFileSymbol):
					if (symbol != rootSourceFileSymbol) {
						log.error('Cannot change symbol access module from <b>ExportModule($rootModuleName, ${rootSourceFileSymbol.name})</> to ExportModule', symbol);
					}
					// clear identifier path because the root has been replaced
					new SymbolAccessPath(log, root, []);
				case AmbientModule(path):
					log.error('Cannot change symbol access from <b>AmbientModule($path)</> to ExportModule', symbol);
					copy();
				case Global:
					log.error('Cannot change symbol access from global to module', symbol);
					copy();
			}
		} else if (TsSymbolTools.isExternalModuleSymbol(symbol)) {
			return switch root {
				case Global:
					// replace global with ambient module
					new SymbolAccessPath(log, AmbientModule(symbol.name), []);
				case ExportModule(rootModuleName, rootSourceFileSymbol):
					log.error('Cannot change symbol access from <b>ExportModule($rootModuleName, ${rootSourceFileSymbol.name})</> to <b>AmbientModule("${symbol.name}")</>', symbol);
					copy();
				case AmbientModule(path):
					log.error('Cannot change symbol access from <b>AmbientModule($path)</> to <b>AmbientModule(${symbol.name})</> because this implies nested modules', symbol);
					copy();
			}
		} else {
			// add identifier
			return new SymbolAccessPath(log, root, tsIdentifierPath.concat([symbol]));
		}
	}

	function toString() {
		var parts = new Array<String>();
		switch root {
			case AmbientModule(path): parts.push('require($path)');
			case ExportModule(moduleName, sourceFile): parts.push('require("$moduleName")');
			case Global:
		}
		return parts.concat(tsIdentifierPath.map(s -> s.name)).join('.');
	}

}

enum SymbolAccessRoot {
	AmbientModule(path: String);
	ExportModule(moduleName: String, sourceFileSymbol: Symbol);
	Global;
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
	An alias symbol is created by one of the following declarations:
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

// @! kept for reference, will remove
class ConverterContext_ {

	final program: Program;
	final tc: TypeChecker;
	final log: Log;
	final haxeModules = new Map<String, HaxeModule>();

	public function new(log: Log, program: Program) {
		this.log = log;
		this.program = program;
		this.tc = program.getTypeChecker();
	}

	public function getHaxeModules() {
		return haxeModules;
	}
	
	/**
	**/
	public function convertSymbol(symbol: Symbol) {
		/**
			Export types to consider
			`export as namespace Sizzle;`
			`export * from './math/Quaternion';` -> expand to typedefs in the module class
			`export = Sizzle;`
			`export default Big;`
			`export type BigSource_ = BigSource;`
		**/

		// https://github.com/microsoft/TypeScript/blob/b58a29b8087445d0b0f647a28c1ad7fb452329e5/src/compiler/binder.ts#L568
		// Exported module members are given 2 symbols: A local symbol that is classified with an ExportValue flag,
		// and an associated export symbol with all the correct flags set on it. There are 2 main reasons:
		//
		//   1. We treat locals and exports of the same name as mutually exclusive within a container.
		//      That means the binder will issue a Duplicate Identifier error if you mix locals and exports
		//      with the same name in the same container.
		//      TODO: Make this a more specific error and decouple it from the exclusion logic.
		//   2. When we checkIdentifier in the checker, we set its resolved symbol to the local symbol,
		//      but return the export symbol (by calling getExportSymbolOfValueSymbolIfExported). That way
		//      when the emitter comes back to it, it knows not to qualify the name if it was found in a containing scope.

		// NOTE: Nested ambient modules always should go to to 'locals' table to prevent their automatic merge
		//       during global merging in the checker. Why? The only case when ambient module is permitted inside another module is module augmentation
		//       and this case is specially handled. Module augmentations should only be merged with original module definition
		//       and should never be merged directly with other augmentation, and the latter case would be possible if automatic merge is allowed.
		if (symbol.flags & (SymbolFlags.ExportValue) != 0) {
			var exportSymbol = tc.getExportSymbolOfSymbol(symbol);
			if (exportSymbol == null) {
				log.error('Export symbol was null, this is unexpected – symbol will be ignored', symbol);
				return;
			}
			convertSymbol(exportSymbol);
			return;
		}

		if (symbol.flags & (SymbolFlags.Module | SymbolFlags.Type | SymbolFlags.Variable | SymbolFlags.Function) == 0) {
			Console.examine(symbol.name, symbol.flags);
			Console.log('\t' + TsSymbolTools.symbolFlagsInfo(symbol.flags).join(', '));
			log.error('Symbol does not have the correct flags for <b>convertSymbol()</>', symbol);
			debug();
			return;
		}

		if (symbol.flags & SymbolFlags.Type != 0) {
			// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
			convertTypeSymbol(symbol);
		}

		if (symbol.flags & (SymbolFlags.Variable | SymbolFlags.Function) != 0) {
			// FunctionScopedVariable | BlockScopedVariable
			// add to module class
		}

		if (symbol.flags & SymbolFlags.Module != 0) {
			// ValueModule | NamespaceModule
			// @! I don't think this properly explores the module
			Console.examine(symbol.name, symbol.globalExports, symbol.exports.size);
			for (moduleExport in tc.getExportsOfModule(symbol)) {
				convertSymbol(moduleExport);
			}
		}
	}

	/**
		Symbol with SymbolFlag.Type
		Returns haxe type artifact
	**/
	function convertTypeSymbol(symbol: Symbol): Null<HaxeModule> {
		// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias

		// notes: exports have a parent that is a symbol that represents the source file
		// see `export const enum Comparison { }` parent
		var rootSymbol = getSymbolRootParent(symbol);
		var isSourceFileExport = rootSymbol != null && isSourceFileSymbol(rootSymbol);
		var pack = generateHaxePackagePath(symbol);
		Console.log('<b>convertTypeSymbol</b> ${pack.join('.')} ${symbol.name} ${isSourceFileExport ? '<green>Export ${rootSymbol.name}</>' : ''}');
		debug();
		return null;
	}

	function saveModule(haxeModule: HaxeModule) {
		// @! save to haxeModules, checking if a module already exists at this path
	}

	function getModule(typePath: String): Null<HaxeModule> {
		// @! get's a previously saved haxe module
		return null;
	}

	function isSourceFileSymbol(symbol: Symbol) {
		return symbol.valueDeclaration != null && Ts.isSourceFile(symbol.valueDeclaration);
	}

	function generateHaxePackagePath(symbol: Symbol): Array<String> {
		var pack = new Array<String>();
		for (symbol in getSymbolParents(symbol)) {
			if (symbol.flags & SymbolFlags.Module != 0) {
				if (isSourceFileSymbol(symbol)) {
					// @! need special handling of source file paths to remove prefix
				} else {
					var nameParts = symbol.name.split('/').map(s -> HaxeTools.toSafeIdent(s).toLowerCase());
					pack = pack.concat(nameParts);
				}
			} else {
				log.error('Symbol parent was not a module in <b>generateHaxePackagePath</>', symbol);
			}
		}
		return pack;
	}

	function getSymbolRootParent(symbol: Symbol): Null<Symbol> {
		var rootParent: Null<Symbol> = null;
		var parentSymbol = getSymbolParent(symbol);
		while(parentSymbol != null) {
			rootParent = parentSymbol;
			parentSymbol = getSymbolParent(parentSymbol);
		}
		return rootParent;
	}

	function getSymbolParents(symbol: Symbol): Array<Symbol> {
		var parentChain = new Array<Symbol>();
		var currentSymbol = symbol;
		while (currentSymbol != null) {
			currentSymbol = getSymbolParent(currentSymbol);
			if (currentSymbol != null) {
				parentChain.unshift(currentSymbol);
			}
		}
		return parentChain;
	}

	function getSymbolParent(symbol: Symbol): Null<Symbol> {
		return Reflect.field(symbol, 'parent');
	}

}

class OnceOnlySymbolQueue {

	public var length(get, null): Int;
	public final allSymbols = new Map<Int, Symbol>(); 
	final array = new Array<Symbol>();


	public function new() {}
	
	public function queue(symbol: Symbol){
		var id: Int = Std.int(Ts.getSymbolId(symbol));
		if (allSymbols.exists(id)) {
			// already queued this symbol before
			return false;
		}

		allSymbols[id] = symbol;
		array.push(symbol);
		return true;
	}

	public function dequeue(): Null<Symbol> {
		return array.shift();
	}

	public function isEmpty() {
		return array.length == 0;
	}

	function get_length() {
		return array.length;
	}

}