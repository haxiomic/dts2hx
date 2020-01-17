import typescript.ts.System;
import hxargs.Args.ArgHandler;
import js.Node;
import typescript.Ts;

@:nullSafety
class Main {

    static var version = Macro.getLocalPackageJsonVersion();

    static function main() {
        var userArgs = Node.process.argv.slice(2);

        // options
        var outputPath: String = 'dts2hx-output';
        var tsConfigFilePath: Null<String> = null;
        var tsSourcePath: Null<String> = null;
        
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

            'install' => (library: String) -> {
                throw 'Install library feature is not yet implemented';
            },

            _ => (arg: String) -> {
                tsSourcePath = arg;
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

        // setup typescript compiler
        var compilerOptions: typescript.ts.CompilerOptions = try
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
                {};
            }
        catch(e: String) {
            Console.error(e);
            Node.process.exit(1);
            return;
        }

        determineInputSourceFiles(tsSourcePath);
    }

    static function determineInputSourceFiles(path: String) {
        
        // @! todo
        // Ts.findConfigFile('');
        // Ts.createInputFiles()
        // Ts.resolveProjectReferencePath()
        // getEffectiveTypeRoots
        // resolveTypeReferenceDirective
        // Ts.createCompilerHost()
        return [];
    }

    static function printDoc(argHandler: ArgHandler) {
        Console.printlnFormatted('<b>dts2hx</b> v$version');
        Console.println('TypeScript definition (.d.ts) to haxe extern converter');
        Console.println('');
        Console.printlnFormatted('<b>Usage:</b>');
        Console.printlnFormatted('\tdts2hx <i,dim>{path}</> <i,dim>{options}</>');
        Console.printlnFormatted('\tdts2hx install <i,dim>{npm-library-name}</> <i,dim>{options}</>');
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

    static function parseArgs(userArgs: Array<String>) {
        var namedArguments = new Map<String, String>();
        var freeArguments = new Array<String>();

        var i = 0;
        while (i < userArgs.length) {
            var arg = userArgs[i];
            if (arg.charAt(0) == '-') {
                namedArguments.set(arg, userArgs[i + 1]);
                i += 2;
            } else {
                freeArguments.push(arg);
                i += 1;
            }
        }
        return {
            namedArguments: namedArguments,
            freeArguments: freeArguments,
        }
    }

}