import Log.LogLevel;
import haxe.Json;
import haxe.io.Path;
import js.Node;
import js.node.Fs;
import typescript.Ts;
import typescript.ts.CompilerOptions;

using Lambda;
using StringTools;

typedef DefinitionGroup = {
    name: String,
    files: Array<String>,
    subgroups: Array<DefinitionGroup>
}

@:expose
class Dts2hx {

    final log: Log;

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

        try {
            // absolute definition files
            var definitionGroups = [
                for (path in tsSourcePaths)
                    findDefinitionFiles(path)
            ];

            Console.examine(definitionGroups);

            // now we need to extract the definition files from the groups
            function extractFiles(groups: Array<DefinitionGroup>) {
                var files = new Array<String>();
                for (group in groups) {
                    files = group.files.concat(files).concat(extractFiles(group.subgroups));
                }
                return files;
            }

            var definitionFiles = extractFiles(definitionGroups);

            if (definitionFiles.length == 0) {
                log.warn('No .d.ts files found');
                return;
            }

            log.log('Root .d.ts files:\n\t<b>${definitionFiles.join('\n\t')}</b>');

            var compilerOptions: CompilerOptions = compilerOptionsOverride != null ? compilerOptionsOverride : {
                types: [], // disable automatic node_modules/@types inclusion
            };

            var host = Ts.createCompilerHost(compilerOptions);

            var program = Ts.createProgram(definitionFiles, compilerOptions, host);
            var tc = program.getTypeChecker();

            for (sourceFile in program.getSourceFiles()) {
                // skip default library files and non .d.ts files
                if (program.isSourceFileDefaultLibrary(sourceFile)) {
                    continue;
                }

                var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);
                var sourceFileName = sourceFileSymbol != null ? sourceFileSymbol.name : null;

                // @! maybe we want to use the internal symbolWalker
                // or at least access node.symbol
                // see https://github.com/microsoft/TypeScript/wiki/Using-the-Compiler-API#using-the-type-checker
                // for an example 

                // Console.examine(sourceFile.fileName, sourceFileName);
            }

            // @! todo: generate readme with version, commit and input commands for reproducibility
        } catch(e: String) {
            log.error(e);
        }
    }

    /**
        Given a path, return associated definition files
        - If the path is a file, return just that file and use its name as the group name
        - If the path is a directory
            - If the directory contains a package.json file and it has a "types" or "typings" field, return the corresponding definition file
            - If the directory contains an index.d.ts, return that
            - Otherwise, search the directory recursively for all .d.ts files (following these same rules)
    **/
    function findDefinitionFiles(path: String): DefinitionGroup {
        var tag = '<dim>findDefinitionFiles()</>';
        // direct definition reference
        if (Ts.sys.fileExists(path)) {
            if (!path.toLowerCase().endsWith('.d.ts')) {
                log.warn('$tag File path "$path" did not end with .d.ts');
            }
            var filename = Path.withoutDirectory(Path.withoutExtension(path));
            log.log('Using filename "<b>$filename</>" as d.ts group name');
            return {
                name: filename,
                files: [path],
                subgroups: [],
            };
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

                            return {
                                name: name,
                                files: [typesFilePath],
                                subgroups: [],
                            }
                        }
                    }
                }

                log.log('$tag No types field found in package.json ${error != null ? '<i,red>($error)</>' : ''}');
            }

            // check for an index.d.ts, if found return that
            var indexPath = Path.join([path, 'index.d.ts']);
            if (Ts.sys.fileExists(indexPath)) {
                log.log('$tag <b>index.d.ts</> found, using directory name "<b>$pathDirname</>" as d.ts group name');
                return {
                    name: pathDirname,
                    files: [indexPath],
                    subgroups: []
                }
            }

            // find all .d.ts files recursively
            log.log('$tag Finding .d.ts files within $path');
            var localDtsFiles = Ts.sys.readDirectory(path, [typescript.ts.Extension.Dts], js.Lib.undefined, js.Lib.undefined, 1);

            var subDirs = Fs.readdirSync(path).map(p -> Path.join([path, p])).filter(p -> Ts.sys.directoryExists(p));

            return {
                name: pathDirname,
                files: localDtsFiles,
                subgroups: [for (dir in subDirs) findDefinitionFiles(dir)]
            }
        } else {
            throw 'No such file or directory "<b>$path</>"';
        }
    }

}