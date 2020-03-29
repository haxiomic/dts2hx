import typescript.ts.SourceFile;
import typescript.ts.SyntaxKind;
import js.Lib.debug;
import tool.HaxeTools;
import tool.TsProgramTools;
import tool.TsSymbolTools;
import typescript.Ts;
import typescript.ts.CompilerOptions;
import typescript.ts.Program;
import typescript.ts.Statement;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.TypeChecker;


@:expose
@:nullSafety
class Dts2hx {

	public final log: Log;
	final tc: TypeChecker;

	public function new(moduleId: String, entryPointFilePath: String, compilerOptions: CompilerOptions, ?log_: Log) {
		this.log = log_ != null ? log_ : new Log();

		// moduleId may be a file reference like path/to/file.d.ts
		var rootPackage = moduleId
			.split('/')
			.filter(part -> ['@types'].indexOf(part) == -1) // remove @types/
			.map(part -> HaxeTools.toSafeIdent(part).toLowerCase());
		log.log('<green>Root Package: <b>${rootPackage.join('.')}</b></>');

		var host = Ts.createCompilerHost(compilerOptions);
		var program = Ts.createProgram([entryPointFilePath], compilerOptions, host);
		this.tc = program.getTypeChecker();

		log.diagnostics(TsProgramTools.getAllDiagnostics(program));

		var entryPointSourceFile = program.getSourceFile(entryPointFilePath);

		if (entryPointSourceFile == null) {
			throw 'TypeScript compiler API error – failed to get entry-point source file';
		}

		// null if nothing is exported (i.e ambient namespaces and modules)
		// "In TypeScript, just as in ECMAScript 2015, any file containing a top-level import or export is considered a module. Conversely, a file without any top-level import or export declarations is treated as a script whose contents are available in the global scope"
		var entryPointExportSymbol = tc.getSymbolAtLocation(entryPointSourceFile);

		if (entryPointExportSymbol != null) {
			/*
			Console.log('-- getExportsOfModule --');
			for (exportedSymbol in tc.getExportsOfModule(entryPointExportSymbol)) {
				log.log(exportedSymbol);
			}
			*/

			Console.log('-- globalExports --');
			if (entryPointExportSymbol.globalExports != null) {
				entryPointExportSymbol.globalExports.forEach((symbol, key) -> {
					log.log(key, symbol);
					if (symbol.flags & SymbolFlags.Alias != 0) {
						log.log('\t', tc.getAliasedSymbol(symbol));
					}
				});
			}

			Console.log('-- exports --');
			if (entryPointExportSymbol.exports != null) {
				entryPointExportSymbol.exports.forEach((symbol, key) -> {
					log.log(key, symbol);
					if (symbol.flags & SymbolFlags.Alias != 0) {
						log.log('\t', tc.getAliasedSymbol(symbol));
					}
				});
			}

			debug();
		} else {
			Console.log('-- Ambient Symbols --');
			for (symbol in getSourceFileSymbols(entryPointSourceFile)) {
				log.log(symbol);
			}
		}

		return;
	}

	function getSourceFileSymbols(sourceFile: SourceFile) {
		var symbols = new Array<Symbol>();
		// iterate statements (assumed to be all declarations for .d.ts) and add symbols to top-level symbol
		for (statement in (cast sourceFile.statements: Array<Statement>)) {
			switch statement.kind {
				// explicitly ignored statements
				// case ImportDeclaration, ExportDeclaration, FirstStatement:
				// 	continue;

				default:
					var name = Ts.getNameOfDeclaration(cast statement);
					if (name != null) {
						var symbol = tc.getSymbolAtLocation(name);
						var exportSymbol = symbol != null ? tc.getExportSymbolOfSymbol(symbol) : null;
						if (exportSymbol == null) {
							log.error('Export symbol was null', statement);
							continue;
						}

						log.log(symbol);
					} else {
						log.warn('Statement (assumed to be declaration) has no name', statement);
					}
			}
		}
		return symbols;
	}

	/**
		Returns top-level symbols in a program (ignoring built-in library symbols)
	**/
	function getTopLevelSymbols(program: Program): Array<Symbol> {
		var topLevelSymbols = new OnceOnlySymbolQueue();
		var tc = program.getTypeChecker();

		for (sourceFile in program.getSourceFiles()) {
			// skip default library files and non .d.ts files
			if (program.isSourceFileDefaultLibrary(sourceFile)) {
				continue;
			}

			// locals is not a public field
			// var locals: js.lib.Map<String, Symbol> = Reflect.field(sourceFile, 'locals');
			// locals.forEach((symbol, name, _) -> topLevelSymbols.queue(symbol));

			// alternative, determine symbols from statements

			// iterate statements (assumed to be all declarations for .d.ts) and add symbols to top-level symbol
			for (statement in (cast sourceFile.statements: Array<Statement>)) {
				switch statement.kind {
					// explicitly ignored statements
					case ImportDeclaration, ExportDeclaration, FirstStatement:
						continue;

					default:
						var name = Ts.getNameOfDeclaration(cast statement);
						if (name != null) {
							var symbol = tc.getSymbolAtLocation(name);
							var exportSymbol = symbol != null ? tc.getExportSymbolOfSymbol(symbol) : null;
							if (exportSymbol == null) {
								log.error('Export symbol was null', statement);
								continue;
							}
							topLevelSymbols.queue(exportSymbol);
						} else {
							log.warn('Statement (assumed to be declaration) has no name', statement);
						}
				}
			}
		}

		return [for (_ => symbol in topLevelSymbols.allSymbols) symbol];
	}

}

class ConverterContext {

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