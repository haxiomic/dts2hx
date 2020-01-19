import Log.LogLevel;
import hxargs.Args.ArgHandler;
import js.Node;


@:nullSafety
class Main {

    static final version = Macro.getLocalPackageJsonVersion();

    static function main() {
        Console.warnPrefix = '<b,yellow>> Warning:</b> ';
        Console.errorPrefix = '<b,red>> Error:</b> ';

        var userArgs = Node.process.argv.slice(2);

        var options = {
            outputPath: 'dts2hx-output',
            tsConfigFilePath: null,
            tsSourcePaths: new Array<String>(),
            logLevel: Warning,
        }

        var argHandler: ArgHandler;
        argHandler = hxargs.Args.generate([
            @doc('Set output directory for generated externs (default "${options.outputPath}")')
            ['--output', '-o'] => (path: String) -> {
                options.outputPath = path;
            },

            @doc('Set path to tsconfig file to use when processing the .d.ts files')
            '--tsconfig' => (path: String) -> {
                options.tsConfigFilePath = path;
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
            '--silent' => () -> {
                Console.printIntercept = (s, o) -> false;
                haxe.Log.trace = (v, ?info) -> {};
            },

            @doc('Print all logs')
            '--verbose' => () -> {
                options.logLevel = All;
            },

            'install' => (library: String) -> {
                throw 'Install library feature is not yet implemented';
            },

            _ => (arg: String) -> {
                options.tsSourcePaths.push(arg);
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

        var dts2hx = new Dts2hx(options);
    }

    static function printDoc(argHandler: ArgHandler) {
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

}