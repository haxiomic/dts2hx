import ConverterContext.OutputType;
import haxe.EnumFlags;
import js.lib.Object;
import Log.LogLevel;
import haxe.DynamicAccess;
import hxargs.Args.ArgHandler;
import js.Node;
import typescript.Ts;
import typescript.ts.CompilerOptions;
import typescript.ts.ModuleResolutionKind;


@:nullSafety
class Main {

	static final version = Macro.getLocalPackageJsonVersion();
	static final log = new Log();

	static function main() {
		Console.warnPrefix = '<b,yellow>> Warning:</b> ';
		Console.errorPrefix = '<b,red>> Error:</b> ';

		var userArgs = Node.process.argv.slice(2);

		var cliOptions = {
			cwd: null,
			outputPath: 'dts2hx-output',
			tsConfigFilePath: null,
			tsCompilerOptions: [],
			moduleNames: new Array<String>(),
			moduleSearchPath: '.',
			allDependencies: false,
			outputFlags: new EnumFlags<ConverterContext.OutputType>(0xFFFFFF),
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

			@doc('Path to use when searching for modules')
			['--moduleSearchPath', '-p'] => (path: String) -> {
				cliOptions.moduleSearchPath = path;
			},

			@doc('Convert all dependencies referenced in package.json (that have type definitions)')
			['--all'] => () -> {
				cliOptions.allDependencies = true;
			},

			@doc('Set path to tsconfig file to use when processing the .d.ts files')
			'--tsconfig' => (path: String) -> {
				cliOptions.tsConfigFilePath = path;
			},

			@doc('Set ts compiler option `--target` (takes precedent over options provided by --tsconfig)')
			'--target' => (scriptTarget: String) -> {
				cliOptions.tsCompilerOptions.push('--target');
				cliOptions.tsCompilerOptions.push(scriptTarget);
			},

			@doc('Set ts compiler option `--moduleResolution` (takes precedent over options provided by --tsconfig)')
			'--moduleResolution' => (kind: String) -> {
				cliOptions.tsCompilerOptions.push('--moduleResolution');
				cliOptions.tsCompilerOptions.push(kind);
			},
			
			@doc('Only generate externs that use javascript modules (i.e. using require() or import)')
			'--modularOnly' => () -> {
				cliOptions.outputFlags.set(Modular);
				cliOptions.outputFlags.unset(Global);
			},

			@doc('Only generate externs with global visibility (i.e. not using require() or import)')
			'--globalOnly' => () -> {
				cliOptions.outputFlags.unset(Modular);
				cliOptions.outputFlags.set(Global);
			},

			@doc('Disable terminal colors')
			'--noColor' => () -> noColor = true,
			// hidden alias
			'--no-color' => () -> noColor = true,

			@doc('Show this help')
			'--help' => () -> help = true,

			@doc('Disable command-line output')
			'--silent' => () -> silent = true,

			@doc('Print all logs')
			'--verbose' => () -> {
				cliOptions.logLevel = All;
			},

			@doc('Module name')
			_ => (arg: String) -> {
				if (arg.charAt(0) == '-') {
					throw 'Unknown argument "$arg"';
				}
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

		log.setPrintLogLevel(cliOptions.logLevel);

		var defaultCompilerOptions = Ts.getDefaultCompilerOptions();
		defaultCompilerOptions.types = []; // disable automatic node_modules/@types inclusion
		defaultCompilerOptions.moduleResolution = ModuleResolutionKind.NodeJs;

		var compilerOptions = defaultCompilerOptions;

		// add options from --tsconfig
		if (cliOptions.tsConfigFilePath != null) {
			var readResult = Ts.readConfigFile(cliOptions.tsConfigFilePath, (path) -> Ts.sys.readFile(path, 'utf8'));
			if (readResult.config != null) {
				var compilerOptionsObj = Reflect.field(readResult.config, 'compilerOptions');
				var result = Ts.convertCompilerOptionsFromJson(compilerOptionsObj, Node.process.cwd(), cliOptions.tsConfigFilePath);
				log.diagnostics(result.errors);

				compilerOptions = extend(compilerOptions, result.options);
			} else {
				if (readResult.error != null) {
					log.diagnostics([readResult.error]);
				}
			}
		}

		// add user-supplied typescript compiler options
		if (cliOptions.tsCompilerOptions.length > 0) {
			var result = Ts.parseCommandLine(cliOptions.tsCompilerOptions);
			log.diagnostics(result.errors);
			compilerOptions = extend(compilerOptions, result.options);
		}

		var host = Ts.createCompilerHost(compilerOptions);

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
			convertTsModule(moduleName, cliOptions.moduleSearchPath, compilerOptions, cliOptions.outputPath, cliOptions.outputFlags);
		}
	}

	static public function convertTsModule(moduleName: String, moduleSearchPath: String, compilerOptions: CompilerOptions, outputPath: String, outputFlags: EnumFlags<OutputType>) {
		var host = Ts.createCompilerHost(compilerOptions);

		var result = Ts.resolveModuleName(moduleName, moduleSearchPath + '/.', compilerOptions, host);
		if (result.resolvedModule != null) {
			// moduleId is what you'd need to pass into require() to get the module

			// commented out: previously I used package name, which I expect may not always match the moduleId used in require()
			// var moduleId = if (result.resolvedModule.packageId != null) {
			//     result.resolvedModule.packageId.name;
			// } else {
			//     var relPath: String = untyped Ts.convertToRelativePath(result.resolvedModule.resolvedFileName, host.getCurrentDirectory(), fileName -> host.getCanonicalFileName(fileName));
			//     relPath;
			// }

			convertTsDefinitions(moduleName, result.resolvedModule.resolvedFileName, compilerOptions, outputPath, outputFlags);
		} else {
			var failedLookupLocations: Array<String> = Reflect.field(result, 'failedLookupLocations'); // @internal field
			log.error('Failed to find typescript for module <b>"${moduleName}"</b>. Searched the following paths:<dim>\n\t${failedLookupLocations.join('\n\t')}</>');
			Node.process.exit(1);
		}
	}

	static function convertTsDefinitions(moduleId: String, entryPointFilePath: String, compilerOptions: CompilerOptions, outputDirectory: String, outputFlags: EnumFlags<OutputType>) {
		var converter = new ConverterContext(moduleId, entryPointFilePath, compilerOptions, outputFlags, log);
	}

	static function extend<T>(base: T, extendWidth: T): T {
		var extended = {};
		for (field in Reflect.fields(base)) {
			Reflect.setField(extended, field, Reflect.field(base, field));
		}
		for (field in Reflect.fields(extendWidth)) {
			Reflect.setField(extended, field, Reflect.field(extendWidth, field));
		}
		return cast extended;
	}

	static function printDoc(argHandler: ArgHandler) {
		Console.printlnFormatted('<b>dts2hx</b> <b>$version</> using <b>TypeScript ${typescript.Ts.version}</>');
		Console.println('TypeScript definition to haxe extern converter');
		Console.println('');
		Console.printlnFormatted('<b>Usage:</b>');
		Console.printlnFormatted('\tdts2hx <i,cyan>{moduleName}</> <i,cyan>{options}</>');
		Console.println('');

		Console.printlnFormatted('<b>Examples:</b>');
		Console.printlnFormatted('\tdts2hx pixi.js');
		Console.printlnFormatted('\tdts2hx three --target es6 --moduleResolution Node');
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