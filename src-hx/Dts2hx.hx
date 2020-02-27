import typescript.ts.Diagnostic;
import typescript.ts.Program;
import typescript.ts.DeclarationName;
import typescript.ts.Statement;
import Log.LogLevel;
import haxe.Json;
import haxe.io.Path;
import js.Node;
import js.node.Fs;
import typescript.Ts;
import typescript.ts.CompilerOptions;
import typescript.ts.Symbol;
import js.Lib.debug;

using Lambda;
using StringTools;

/**
    A group roughly maps to a module (since some collections of definitions don't necessarily conform to modules)
**/
typedef DefinitionGroup = {
    name: String,
    files: Array<String>,
}

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
        
        var definitionGroups = [
            for (path in tsSourcePaths)
                try findDefinitionGroups(path) catch(e: Any) {
                    log.error('Error finding definition files: ${e}');
                    [{
                        name: '',
                        files: [],
                    }];
                }
        ].flatten();

        Console.examine(definitionGroups);

        for (group in definitionGroups) {
            try convertDefinitions(group, compilerOptions)
            catch(e: String) log.error(e);
        }
    }

    function convertDefinitions(definitionGroup: DefinitionGroup, compilerOptions: CompilerOptions) {
        log.log('Converting group <b>${definitionGroup.name}</>');

        // converter state
        var topLevelSymbolQueue = new OnceOnlySymbolQueue();

        if (definitionGroup.files.length == 0) {
            log.warn('No .d.ts files found');
            return;
        }

        log.log('Root .d.ts files:\n\t<b>${definitionGroup.files.join('\n\t')}</b>');

        var host = Ts.createCompilerHost(compilerOptions);

        var program = Ts.createProgram(definitionGroup.files, compilerOptions, host);
        var tc = program.getTypeChecker();

        var diagnostics = getAllDiagnostics(program);
        logDiagnostics(diagnostics);

        // find top-level symbols to convert
        for (sourceFile in program.getSourceFiles()) {
            // skip default library files and non .d.ts files
            if (program.isSourceFileDefaultLibrary(sourceFile)) {
                continue;
            }

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
                            topLevelSymbolQueue.queue(exportSymbol);
                        } else {
                            log.warn('Statement (assumed to be declaration) has no name', statement);
                        }
                }
            }
        }

        // generate externs from top-level symbols
        // top-level symbol queue may grow during this loop
        while(!topLevelSymbolQueue.isEmpty()) {
            var symbol = topLevelSymbolQueue.dequeue();
            if (symbol == null) continue;

            // @! checkout _Event, test-definitions/node_modules/@types/jquery/misc.d.ts:6538
            // is this exposed or internal?
            // export as namespace someModule; ?

            Console.examine(symbol.escapedName);
            for (declaration in symbol.declarations) {
                var declarationName: Null<typescript.ts.Node> = Ts.getNameOfDeclaration(declaration);
                // Ts.tokenToString(name);
                if (declarationName != null) {
                    log.log('\t', declaration);
                } else {
                    log.warn('\t declaration with no name');
                }
            }
        }
    }

    /**
        @throws String
    **/
    function findDefinitionGroups(path: String): Array<DefinitionGroup> {
        var tag = '<b>[findDefinitionGroups()]</>';
        if (Ts.sys.fileExists(path)) {
            var filename = Path.withoutDirectory(path);
            var groupName: String = if (!path.toLowerCase().endsWith('.d.ts')) {
                log.warn('$tag File path "$path" did not end with .d.ts');
                Path.withoutExtension(filename);
            } else {
                filename.substr(0, filename.length - '.d.ts'.length);
            }
            
            // @! if filename is index.d.ts maybe we should check for a package.json that references this file to get a better guess for name

            log.log('Using filename "<b>$groupName</>" as d.ts group name');
            return [{
                name: groupName,
                files: [path],
            }];
        } else if (Ts.sys.directoryExists(path)) {
            var pathDirname = Path.withoutDirectory(js.node.Path.resolve(path));

            // check for a package.json and return "types"/"typings" field if exists
            var packageJsonPath = Path.join([path, 'package.json']);
            if (Ts.sys.fileExists(packageJsonPath)) {
                log.log('$tag <b>package.json</> found - "<b>$packageJsonPath</>"');

                var error: Null<Any> = null;

                var packageJson = 
                    try Json.parse(Fs.readFileSync(packageJsonPath, {encoding: 'utf8'}))
                    catch (e: Any) {
                        error = e;
                        null;
                    }

                if (packageJson != null) {
                    var types = packageJson.types != null ? packageJson.types : packageJson.typings;

                    if (types != null) {
                        var typesFilePath = Path.join([path, types]);

                        if (!typesFilePath.toLowerCase().endsWith('.d.ts')) {
                            typesFilePath += '.d.ts';
                        }

                        if (Ts.sys.fileExists(typesFilePath)) {
                            log.log('$tag Using package.json specified types - "<b>$typesFilePath</>"');

                            var name: String = if (packageJson.name != null) {
                                log.log('$tag Using package.json specified name "<b>${packageJson.name}</>" for d.ts group name');
                                packageJson.name;
                            } else {
                                pathDirname;
                            }

                            if (!typesFilePath.toLowerCase().endsWith('.d.ts')) {
                                log.warn('$tag File path "$typesFilePath" in did not end with .d.ts (<i,dim>$packageJsonPath</i>)');
                            }

                            return [{
                                name: name,
                                files: [typesFilePath],
                            }];
                        }
                    }
                }

                log.log('$tag No types field found in package.json ${error != null ? '<i,red>($error)</>' : ''}');
            }

            // check for an index.d.ts, if found return that
            var indexPath = Path.join([path, 'index.d.ts']);
            if (Ts.sys.fileExists(indexPath)) {
                log.warn('$tag <b>index.d.ts</> found but no package.json with <i>types</> field; using directory name "<b>$pathDirname</>" as d.ts group name');
                return [{
                    name: pathDirname,
                    files: [indexPath],
                }];
            }

            log.log('$tag Finding .d.ts files within $path');
            var localDtsFiles = Ts.sys.readDirectory(path, [typescript.ts.Extension.Dts], js.Lib.undefined, js.Lib.undefined, 1);
            var subDirs = Fs.readdirSync(path).map(p -> Path.join([path, p])).filter(p -> Ts.sys.directoryExists(p));

            var localDefinitionGroup = {
                name: pathDirname,
                files: localDtsFiles,
            }

            var subgroups = [for (dir in subDirs) {
                findDefinitionGroups(dir);
            }].flatten();

            return if (localDtsFiles.length > 0) {
                subgroups.concat([localDefinitionGroup]);
            } else subgroups;
        } else {
            throw 'No such file or directory "<b>$path</>"';
        }
    }

    function getAllDiagnostics(program: Program) {
        return program.getGlobalDiagnostics()
            .concat(program.getOptionsDiagnostics())
            .concat(program.getSemanticDiagnostics())
            .concat(program.getSyntacticDiagnostics())
            .concat(program.getDeclarationDiagnostics())
            .concat(program.getConfigFileParsingDiagnostics());
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