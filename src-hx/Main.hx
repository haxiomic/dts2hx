import haxe.DynamicAccess;
import typescript.Ts;
import typescript.ts.CompilerOptions;
import tool.HaxeTools;
import Log.LogLevel;
import hxargs.Args.ArgHandler;
import js.Node;

import js.Lib.debug;

@:nullSafety
class Main {

    static final version = Macro.getLocalPackageJsonVersion();

    static function main() {
        Console.warnPrefix = '<b,yellow>> Warning:</b> ';
        Console.errorPrefix = '<b,red>> Error:</b> ';

        var userArgs = Node.process.argv.slice(2);

        var cliOptions = {
            cwd: null,
            outputPath: 'dts2hx-output',
            tsConfigFilePath: null,
            moduleNames: new Array<String>(),
            moduleSearchPath: '.',
            allDependencies: false,
            logLevel: Warning,
        }

        var help: Bool = false;
        var noColor: Bool = false;
        var silent: Bool = false;

        var argHandler: ArgHandler;
        argHandler = hxargs.Args.generate([
            @doc('Set output directory for generated externs (default "${cliOptions.outputPath}")')
            ['--output', '-o'] => (path: String) -> {
                cliOptions.outputPath = path;
            },

            ['--moduleSearchPath', '-s'] => (moduleSearchPath: String) -> {
                cliOptions.moduleSearchPath = moduleSearchPath;
            },

            @doc('Convert definitions of a specific module using normal typescript module resolution rules')
            ['--module', '-m'] => (moduleName: String) -> {
                cliOptions.moduleNames.push(moduleName);
            },

            @doc('Convert all dependencies referenced in package.json (that have type definitions)')
            ['--all'] => () -> {
                cliOptions.allDependencies = true;
            },

            @doc('Set path to tsconfig file to use when processing the .d.ts files')
            '--tsconfig' => (path: String) -> {
                cliOptions.tsConfigFilePath = path;
            },

            @doc('Disable terminal colors')
            '--no-color' => () -> noColor = true,

            @doc('Show this help')
            '--help' => () -> help = true,

            @doc('Disable cli output')
            '--silent' => () -> silent = true,

            @doc('Print all logs')
            '--verbose' => () -> {
                cliOptions.logLevel = All;
            },

            @doc('Module name')
            _ => (arg: String) -> {
                cliOptions.moduleNames.push(arg);
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

        if (silent) {
            Console.printIntercept = (s, o) -> false;
            haxe.Log.trace = (v, ?info) -> {};
        }

        if (noColor) {
            Console.formatMode = Disabled;
        }

        // apply bool flags
        if (help) {
            printDoc(argHandler);
            Node.process.exit(0);
            return;
        }

        var log = new Log(cliOptions.logLevel != null ? cliOptions.logLevel : Warning);

        var compilerOptionsOverride: Null<CompilerOptions> = try
            if (cliOptions.tsConfigFilePath != null) {
                var readResult = Ts.readConfigFile(cliOptions.tsConfigFilePath, (path) -> Ts.sys.readFile(path, 'utf8'));
                if (readResult.error != null) {
                    throw readResult.error.messageText;
                } else {
                    if (readResult.config != null) {
                        readResult.config;
                    } else {
                        throw 'Could not read "${cliOptions}.tsConfigFilePath"';
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

        var host = Ts.createCompilerHost(compilerOptions);

        log.log(host.getCurrentDirectory());

        // add package.json dependencies to list of modules
        if (cliOptions.allDependencies) {
            try {
                var packageJson = host.readFile('package.json');
                if (packageJson == null) {
                    var absPath = haxe.io.Path.join([host.getCurrentDirectory(), 'package.json']);
                    throw '<b>"${absPath}"</> does not exist; could not determine dependencies';
                }

                var packageObj = haxe.Json.parse(packageJson);
                var dependencies: DynamicAccess<String> = packageObj.dependencies != null ? packageObj.dependencies : {};
                var devDependencies: DynamicAccess<String> = packageObj.devDependencies != null ? packageObj.devDependencies : {};
                var allDependencies = dependencies.keys().concat(devDependencies.keys());

                // check if module has typescript
                for (moduleName in allDependencies) {
                    var result = Ts.resolveModuleName(moduleName, cliOptions.moduleSearchPath + '/.', compilerOptions, host);
                    if (result.resolvedModule != null) {
                        cliOptions.moduleNames.push(moduleName);
                    } else {
                        log.warn('Dependency <b>"${moduleName}"</b> does not have typescript definitions');
                    }
                }
            } catch (e: String) {
                log.error(e);
                Node.process.exit(1);
            }
        }

        for (moduleName in cliOptions.moduleNames) {
            var result = Ts.resolveModuleName(moduleName, cliOptions.moduleSearchPath + '/.', compilerOptions, host);
            if (result.resolvedModule != null) {
                Console.log('<green>${result.resolvedModule.resolvedFileName}</>', result.resolvedModule);
                var rootPackage = if (result.resolvedModule.packageId != null) {
                    [result.resolvedModule.packageId.name];
                } else {
                    var relPath: String = untyped Ts.convertToRelativePath(result.resolvedModule.resolvedFileName, host.getCurrentDirectory(), fileName -> host.getCanonicalFileName(fileName));
                    var pathParts = relPath.split('/');
                    pathParts.pop();
                    pathParts;
                }
                var program = Ts.createProgram([result.resolvedModule.resolvedFileName], compilerOptions, host);
            } else {
                var failedLookupLocations: Array<String> = Reflect.field(result, 'failedLookupLocations'); // @internal field
                log.error('Failed to find typescript for module <b>"${moduleName}"</b>. Searched the following paths:<dim>\n\t${failedLookupLocations.join('\n\t')}</>');
                Node.process.exit(1);
            }
        }

        // var dts2hx = new Dts2hx(options);
    }

    static function printDoc(argHandler: ArgHandler) {
        Console.printlnFormatted('<b>dts2hx</b> <b>$version</> using <b>TypeScript ${typescript.Ts.version}</>');
        Console.println('TypeScript definition to haxe extern converter');
        Console.println('');
        Console.printlnFormatted('<b>Usage:</b>');
        Console.printlnFormatted('\tdts2hx <i,cyan>{moduleName}</> <i,cyan>{options}</>');
        Console.println('');

        Console.printlnFormatted('<b>Examples:</b>');
        Console.printlnFormatted('\tdts2hx three');
        Console.printlnFormatted('\tdts2hx --all --output .haxelib');
        Console.printlnFormatted('\tdts2hx ./src/index --verbose');
        Console.println('');

        Console.printFormatted('<bright_white,b>Options:</>\n');

        var usageStringMaxLength = 0;

        var formattedOptions = [];

        for (item in argHandler.options) {
            if (item.doc == null) continue;

            var usageString = '<light_white>${item.flags.join(', ')}</>';

            if (item.args.length > 0) {
                usageString += ' <i,cyan>' + item.args.map(a -> '{${a.opt?'?':''}${a.name}}').join(', ') + '</>';
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

}