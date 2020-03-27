import typescript.ts.NodeFlags;
import typescript.ts.SymbolFlags;
import typescript.ts.TypeChecker;
import tool.TsPackageTools;
import tool.TsSymbolTools;
import tool.TsProgramTools;
import typescript.ts.Diagnostic;
import Log.LogLevel;
import js.Node;
import typescript.Ts;
import typescript.ts.CompilerOptions;
import typescript.ts.Program;
import typescript.ts.Statement;
import typescript.ts.Symbol;
import tool.HaxeTools;
import haxe.macro.Expr;

import js.Lib.debug;

using Lambda;

@:expose
@:nullSafety
class Dts2hx {

	public final log: Log;

	public function new(options: {
		outputPath: String,
		tsSourcePaths: Array<String>,
		?tsConfigFilePath: String,
		?logLevel: LogLevel,
	}) {
		this.log = new Log(options.logLevel != null ? options.logLevel : Warning);

		// options
		var outputPath: String = options.outputPath;
		var tsConfigFilePath: Null<String> = options.tsConfigFilePath;
		var tsSourcePaths = options.tsSourcePaths;

		var compilerOptionsOverride: Null<CompilerOptions> = try
			if (tsConfigFilePath != null) {
				var readResult = Ts.readConfigFile(tsConfigFilePath, (path) -> Ts.sys.readFile(path, 'utf8'));
				if (readResult.error != null) {
					throw readResult.error.messageText;
				} else {
					if (readResult.config != null) {
						readResult.config;
					} else {
						throw 'Could not read "$tsConfigFilePath"';
					}
				}
			} else {
				null;
			}
		catch(e: String) {
			log.error(e);
			Node.process.exit(1);
			null;
		}

		var compilerOptions: CompilerOptions = compilerOptionsOverride != null ? compilerOptionsOverride : {
			types: [], // disable automatic node_modules/@types inclusion
		};
		
		// @! maybe we could use Ts.resolveModuleName for this
		var definitionGroups = [
			for (path in tsSourcePaths)
				try TsPackageTools.findDefinitionGroups(log, path) catch(e: Any) {
					log.error('Error finding definition files: ${e}');
					[{
						name: '',
						files: [],
					}];
				}
		].flatten();

		Console.examine(definitionGroups);

		for (group in definitionGroups) {
			try convertTsDefinitions(group, compilerOptions)
			catch(e: String) log.error(e);
		}
	}

	function convertTsDefinitions(definitionGroup: DefinitionGroup, compilerOptions: CompilerOptions) {
		log.log('Converting group <b>${definitionGroup.name}</>');

		if (definitionGroup.files.length == 0) {
			log.warn('No .d.ts files found');
			return;
		}

		log.log('Root .d.ts files:\n\t<b>${definitionGroup.files.join('\n\t')}</b>');

		var host = Ts.createCompilerHost(compilerOptions);

		var program = Ts.createProgram(definitionGroup.files, compilerOptions, host);

		logDiagnostics(TsProgramTools.getAllDiagnostics(program));

		var converterContext = new ConverterContext(log, program);

		for (symbol in getTopLevelSymbols(program)) {
			converterContext.convertSymbol(symbol);
		}

		Console.examine(converterContext.getHaxeModules());
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

	function logDiagnostics(diagnostics: Array<Diagnostic>) {
		for (diagnostic in diagnostics) {
			var message = '<b>[TypeScript ${Ts.versionMajorMinor}]</> ${diagnostic.messageText}';
			if (diagnostic.file != null) {
				message += ' <dim>(${log.formatLocation({
					sourceFile: diagnostic.file,
					start: diagnostic.start
				})})</>';
			}
			switch diagnostic.category {
				case Error: log.error(message);
				case Warning: log.warn(message);
				case Message: log.log(message);
				case Suggestion: log.log(message);
			}
		}
	}

	static function capitalize(str: String) {
		return str.charAt(0).toUpperCase() + str.substr(1);	
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

	function getModule(typePath: String) {

	}

	function isSourceFileSymbol(symbol: Symbol) {
		return symbol.valueDeclaration != null && Ts.isSourceFile(symbol.valueDeclaration);
	}

	function generateHaxePackagePath(symbol: Symbol): Array<String> {
		var pack = new Array<String>();
		for (symbol in getSymbolParents(symbol)) {
			if (symbol.flags & SymbolFlags.Module != 0) {
				if (isSourceFileSymbol(symbol)) {
					// need special handling of source file paths to remove prefix
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