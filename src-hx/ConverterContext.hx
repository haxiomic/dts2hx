import haxe.ds.ReadOnlyArray;
import typescript.ts.InternalSymbolName;
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
			throw 'Failed to get entry-point source file';
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
			
			/**
			Console.log('-- getExportsOfModule --');
			for (symbol in tc.getExportsOfModule(entryPointModuleSymbol)) {
				log.log(symbol);
				if (symbol.flags & SymbolFlags.Alias != 0) {
					log.log('\t', tc.getAliasedSymbol(symbol));
				}
			}

			Console.log('-- globalExports --');
			if (entryPointModuleSymbol.globalExports != null) {
				entryPointModuleSymbol.globalExports.forEach((symbol, key) -> {
					log.log(key, symbol);
					if (symbol.flags & SymbolFlags.Alias != 0) {
						log.log('\t', tc.getAliasedSymbol(symbol));
					}
				});
			}

			Console.log('-- exports --');
			if (entryPointModuleSymbol.exports != null) {
				entryPointModuleSymbol.exports.forEach((symbol, key) -> {
					log.log(symbol);
					if (symbol.flags & SymbolFlags.Alias != 0) {
						log.log('\t', tc.getAliasedSymbol(symbol));
					}
				});
			}
			/**/
		} else {
			// note: if we use try to use global symbols for an export module, the returned symbols seem to be malformed (sometimes symbol.flags = 0 for example)
		}

		var accessPath = new SymbolAccessPath(log, tc, entryPointModuleSymbol != null ? ExportModule(entryPointModuleId, entryPointModuleSymbol) : Global);

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
					convertSymbolDeclarations(aliasedSymbol, newAccessPath);
			}
		}

		if (symbol.flags & SymbolFlags.Type != 0) {
			// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
			handled = true;
		}

		if (symbol.flags & (SymbolFlags.Variable | SymbolFlags.Function) != 0) {
			// FunctionScopedVariable | BlockScopedVariable
			// add to module class
			handled = true;
		}

		if (symbol.flags & SymbolFlags.Module != 0) {
			handled = true;
			// FunctionScopedVariable | BlockScopedVariable
			var newAccessPath = accessPath.copyAndAddSymbol(symbol);
			var exports = tc.getExportsOfModule(symbol);
			for (moduleExport in exports) {
				convertSymbolDeclarations(moduleExport, newAccessPath);
			}
		}

		if (!handled) {
			log.warn('Symbol was not handled in convertSymbolDeclarations()', symbol);
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
		for (symbol in TsSymbolTools.getSymbolParents(symbol)) {
			if (symbol.flags & SymbolFlags.Module != 0) {
				if (TsSymbolTools.isSourceFileSymbol(symbol)) {
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

}

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
			}
		} else if (TsSymbolTools.isExternalModuleSymbol(symbol)) {
			return switch root {
				case Global:
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
		}
		return parts.concat(getIdentifierChain()).join('.');
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