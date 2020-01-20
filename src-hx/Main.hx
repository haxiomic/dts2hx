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

            @doc('Convert all dependencies referenced in package.json (that have type definitions)')
            ['--all', '-a'] => () -> {
                throw 'todo';
            },

            @doc('Convert definitions of a specific module in node_modules')
            ['--module', '-m'] => (moduleName: String) -> {
                throw 'todo';
            },

            @doc('Convert definitions at a given path')
            ['--path', '-p'] => (path: String) -> {
                options.tsSourcePaths.push(path);
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

            _ => (arg: String) -> {
                throw 'conversion from module name not yet supported';
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
        Console.println('TypeScript definition to haxe extern converter');
        Console.println('');
        Console.printlnFormatted('<b>Usage:</b>');
        Console.printlnFormatted('\tdts2hx <i,cyan>{path}</> <i,cyan>{options}</>');
        Console.println('');

        Console.printlnFormatted('<b>Examples:</b>');
        Console.printlnFormatted('\tdts2hx --path example.d.ts');
        Console.printlnFormatted('\tdts2hx --path node_modules/@types -o .haxelib');
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