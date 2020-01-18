import typescript.ts.ModifierFlags;
import haxe.Json;
import haxe.io.Path;
import hxargs.Args.ArgHandler;
import js.Node;
import js.node.Fs;
import typescript.Ts;
import typescript.ts.CompilerOptions;

using StringTools;
using Lambda;

@:nullSafety
class Main {

    final log = new Log(Warning);

    function new() {
        var userArgs = Node.process.argv.slice(2);

        // options
        var outputPath: String = 'dts2hx-output';
        var tsConfigFilePath: Null<String> = null;
        var tsSourcePaths = new Array<String>();
        
        var argHandler: ArgHandler;
        argHandler = hxargs.Args.generate([
            @doc('Set output directory for generated externs (default "$outputPath")')
            ['--output', '-o'] => (path: String) -> {
                outputPath = path;
            },
            
            @doc('Set path to tsconfig file to use when processing the .d.ts files')
            '--tsconfig' => (path: String) -> {
                tsConfigFilePath = path;
            },

            @doc('Disable terminal colors')
            '--no-color' => () -> {
                Console.formatMode = Disabled;
            },

            @doc('Show this help')
            '--help' => () -> {
                printDoc(argHandler);
                Node.process.exit(0);
            },

            @doc('Disable cli output')
            '--quiet' => () -> {
                Console.printIntercept = (s, o) -> false;
                haxe.Log.trace = (v, ?info) -> {};
            },

            @doc('Print all logs')
            '--verbose' => () -> {
                log.setPrintLogLevel(All);
            },

            'install' => (library: String) -> {
                throw 'Install library feature is not yet implemented';
            },

            _ => (arg: String) -> {
                tsSourcePaths.push(arg);
            }
        ]);

        if (userArgs.length == 0) {
            printDoc(argHandler);
            Node.process.exit(1);
            return;
        } else {
            try argHandler.parse(userArgs) catch (e: String) {
                Console.error(e);
                Console.print('\n');
                printDoc(argHandler);
                Node.process.exit(1);
            }
        }

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
            var definitionFiles = [
                for (path in tsSourcePaths)
                    findDefinitionFiles(path)
            ].flatten();

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

                Console.examine(sourceFile.fileName, sourceFileName);
            }
        } catch(e: String) {
            log.error(e);
        }
    }

    /**
        Given a path, return associated definition files
        - If the path is a file, return just that file
        - If the path is a directory
            - If the directory contains a package.json file and it has a "types" or "typings" field, return the corresponding definition file
            - If the directory contains an index.d.ts, return that
            - Otherwise, search the directory recursively for all .d.ts files (following these same rules)
    **/
    function findDefinitionFiles(path: String): Array<String> {
        var tag = '<b>findDefinitionFiles():</b>';
        // direct definition reference
        if (Ts.sys.fileExists(path)) {
            if (!path.toLowerCase().endsWith('.d.ts')) {
                log.warn('$tag File path "$path" did not end with .d.ts');
            }
            return [path];
        } else if (Ts.sys.directoryExists(path)) {

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
                            if (!typesFilePath.toLowerCase().endsWith('.d.ts')) {
                                log.warn('$tag File path "$typesFilePath" in did not end with .d.ts (<i,dim>$packageJsonPath</i>)');
                            }
                            return [typesFilePath];
                        }
                    }
                }

                log.log('$tag No types field found in package.json ${error != null ? '<i,red>($error)</>' : ''}');
            }

            // check for an index.d.ts, if found return that
            var indexPath = Path.join([path, 'index.d.ts']);
            if (Ts.sys.fileExists(indexPath)) {
                log.log('$tag <b>index.d.ts</> found');
                return [indexPath];
            }

            // find all .d.ts files recursively
            log.log('$tag Finding .d.ts files within $path');
            var localDtsFiles = Ts.sys.readDirectory(path, [typescript.ts.Extension.Dts], js.Lib.undefined, js.Lib.undefined, 1);

            var subDirs = Fs.readdirSync(path).map(p -> Path.join([path, p])).filter(p -> Ts.sys.directoryExists(p));

            return localDtsFiles.concat([for (dir in subDirs) findDefinitionFiles(dir)].flatten());
        } else {
            throw 'No such file or directory "<b>$path</>"';
        }
    }

    function printDoc(argHandler: ArgHandler) {
        Console.printlnFormatted('<b>dts2hx</b> v$version');
        Console.println('TypeScript definition (.d.ts) to haxe extern converter');
        Console.println('');
        Console.printlnFormatted('<b>Usage:</b>');
        Console.printlnFormatted('\tdts2hx <i,dim>{path}</> <i,dim>{options}</>');
        // Console.printlnFormatted('\tdts2hx install <i,dim>{npm-library-name}</> <i,dim>{options}</>');
        Console.println('');

        Console.printlnFormatted('<b>Examples:</b>');
        Console.printlnFormatted('\tdts2hx example.d.ts');
        Console.printlnFormatted('\tdts2hx node_modules/@types -o .haxelib');
        Console.println('');

        Console.printFormatted('<bright_white,b>Options:</>\n');

        var usageStringMaxLength = 0;

        var formattedOptions = [];

        for (item in argHandler.options) {
            if (item.doc == null) continue;

            var usageString = '${item.flags.join(', ')}';

            if (item.args.length > 0) {
                usageString += ' <i,dim>' + item.args.map(a -> '{${a.opt?'?':''}${a.name}}').join(', ') + '</>';
            }
            
            var unformattedLength = Console.stripFormatting(usageString).length;

            formattedOptions.push({
                usageString: usageString,
                unformattedLength: unformattedLength,
                doc: item.doc,
            });

            usageStringMaxLength = Std.int(Math.max(usageStringMaxLength, unformattedLength));
        }

        var lines = formattedOptions.map(f -> {
            var rPadding = [for (i in 0...(usageStringMaxLength - f.unformattedLength)) ' '].join('');
            '${f.usageString}$rPadding ${f.doc}';
        });

        Console.printFormatted(lines.join('\n') + '\n');
    }

    static final version = Macro.getLocalPackageJsonVersion();

    static function main() {
        Console.warnPrefix = '<b,yellow>> Warning:</b> ';
        Console.errorPrefix = '<b,red>> Error:</b> ';
        new Main();
    }

}