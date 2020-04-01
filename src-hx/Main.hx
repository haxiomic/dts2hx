import Log.LogLevel;
import haxe.DynamicAccess;
import haxe.EnumFlags;
import haxe.io.Path;
import hxargs.Args.ArgHandler;
import js.Node;
import js.node.Fs;
import typescript.Ts;
import typescript.ts.CompilerOptions;
import typescript.ts.ModuleResolutionKind;
import typescript.ts.ResolvedModuleFull;

using StringTools;
using tool.StringTools;

@:nullSafety
class Main {

	static final packageJson = Macro.getLocalPackageJson();
	static final log = new Log();

	static function main() {
		Console.examine(Macro.getLocalPackageJson());
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
			outputFlags: new EnumFlags<OutputType>(0xFFFFFF),
			logLevel: Warning,
		}

		var help: Bool = false;
		var noColor: Bool = false;
		var silent: Bool = false;
		var defaultValueFormatting = 'yellow';

		var argHandler: ArgHandler;
		argHandler = hxargs.Args.generate([
			@doc('Set output directory for generated externs (default <$defaultValueFormatting>"${cliOptions.outputPath}"</>)')
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

			@doc('Set ts compiler option `--target`, takes precedent over options provided by --tsconfig (default <$defaultValueFormatting>"ES6"</>)')
			'--target' => (scriptTarget: String) -> {
				cliOptions.tsCompilerOptions.push('--target');
				cliOptions.tsCompilerOptions.push(scriptTarget);
			},

			@doc('Set ts compiler option `--moduleResolution`, takes precedent over options provided by --tsconfig (default <$defaultValueFormatting>"Node"</>)')
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
		defaultCompilerOptions.target = ES2015; // default to ES6 for lib types
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
				try {
					convertTsModule(moduleName, cliOptions.moduleSearchPath, compilerOptions, cliOptions.outputPath, cliOptions.outputFlags);
				} catch (e: Any) {
					log.error(e);
					Node.process.exit(1);
				}
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

			convertTsDefinitions(moduleName, result.resolvedModule, compilerOptions, outputPath, outputFlags);
		} else {
			var failedLookupLocations: Array<String> = Reflect.field(result, 'failedLookupLocations'); // @internal field
			throw 'Failed to find typescript for module <b>"${moduleName}"</b>. Searched the following paths:<dim>\n\t${failedLookupLocations.join('\n\t')}</>';
		}
	}

	static function convertTsDefinitions(moduleId: String, resolveModule: ResolvedModuleFull, compilerOptions: CompilerOptions, outputDirectory: String, outputFlags: EnumFlags<OutputType>) {
		var converter = new ConverterContext(moduleId, resolveModule.resolvedFileName, compilerOptions, log);

		// save modules to files
		var printer = new haxe.macro.Printer();
		var hasModularAndGlobal =
			outputFlags.has(Global) && outputFlags.has(Modular) &&
			converter.generated.global.keys().hasNext() && converter.generated.modular.keys().hasNext();

		function writeModules(modules: Map<String, HaxeModule>, outputType: OutputType) {
			var suffix = if (hasModularAndGlobal) switch outputType {
				case Global: '-global';
				case Modular: '-modular';
			} else {
				'';
			}
			var moduleDirname = haxe.io.Path.withoutDirectory(moduleId) + suffix;
			var modulePath = Path.join([outputDirectory, moduleDirname]);

			for (_ => module in modules) {
				var filePath = Path.join([modulePath].concat(module.pack).concat(['${module.name}.hx']));
				var moduleHaxeStr = printer.printTypeDefinition(module);

				for (subType in module.subTypes) {
					moduleHaxeStr += '\n\n' + printer.printTypeDefinition(subType);
				}

				touchDirectoryPath(Path.directory(filePath));
				Fs.writeFileSync(filePath, moduleHaxeStr);
			}

			touchDirectoryPath(modulePath);

			// write a readme
			var readmeStr = generateReadme(converter, resolveModule, outputType);
			Fs.writeFileSync(Path.join([modulePath, 'README.md']), readmeStr);

			// write haxelib.json
			var haxelibJsonStr = generateHaxelibJson(converter, resolveModule, outputType);
			Fs.writeFileSync(Path.join([modulePath, 'haxelib.json']), haxelibJsonStr);
		}
		
		if (outputFlags.has(Global)) {
			writeModules(converter.generated.global, Global);
		}

		if (outputFlags.has(Modular)) {
			writeModules(converter.generated.modular, Modular);
		}
	}

	static function generateReadme(converter: ConverterContext, resolveModule: ResolvedModuleFull, outputType: OutputType): String {
		var repoUrl = packageJson.repository.url;
		var dts2hxRef = repoUrl != null ? '[dts2hx]($repoUrl)' : 'dts2hx';
		var moduleVersion: Null<String> = resolveModule.packageId != null ? resolveModule.packageId.version : null;
		return '
			# Haxe Externs for ${converter.entryPointModuleId}${moduleVersion != null ? ' v$moduleVersion' : ''}

			${switch outputType {
				case Global: 'These definitions assume global visibility of the library ${converter.entryPointModuleId}. When targeting the web you should add the library with a `<script>` tag.';
				case Modular: 'These definitions use `require("${converter.entryPointModuleId.removeQuotes()}")` to load the library at runtime. When targeting the web, you may want to use a JavaScript bundler to combine modules into a single file.';
			}}

			Generated by **$dts2hxRef ${packageJson.version}** using **TypeScript ${typescript.Ts.version}** with arguments:
			```bash
			dts2hx ${Node.process.argv.slice(2).join(' ')}
			```
		'.removeIndentation().trim();
	}

	static function generateHaxelibJson(converter: ConverterContext, resolveModule: ResolvedModuleFull, outputType: OutputType): String {
		var moduleVersion: Null<String> = resolveModule.packageId != null ? resolveModule.packageId.version : null;
		var haxelib: Dynamic = {
			name: converter.entryPointModuleId,
			tags: [converter.entryPointModuleId, "externs", "typescript", "javascript", "dts2hx"],
			description: 'Externs for ${converter.entryPointModuleId}${moduleVersion != null ? ' v$moduleVersion' : ''} automatically generated by dts2hx',
			contributors: ["haxiomic"],
		}
		if (moduleVersion != null) {
			haxelib.version = moduleVersion;
		}
		return haxe.Json.stringify(haxelib, null, '\t');
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
		Console.printlnFormatted('<b>dts2hx</b> <b>${packageJson.version}</> using <b>TypeScript ${typescript.Ts.version}</>');
		Console.println('TypeScript definition to haxe extern converter');
		Console.println('');
		Console.printlnFormatted('<b>Usage:</b>');
		Console.printlnFormatted('\tdts2hx <i,cyan>{moduleName}</> <i,cyan>{options}</>');
		Console.println('');

		Console.printlnFormatted('<b>Examples:</b>');
		Console.printlnFormatted('\tdts2hx three');
		Console.printlnFormatted('\tdts2hx pixi.js --globalOnly');
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

	/**
		Ensures directory structure exists for a given path
		(Same behavior as mkdir -p)
		@throws Any
	**/
	static public function touchDirectoryPath(path: String) {
		var directories = Path.normalize(path).split('/');
		var currentDirectories = [];
		for (directory in directories) {
			currentDirectories.push(directory);
			var currentPath = currentDirectories.join('/');
			if (currentPath == '/') continue;
			if (Fs.existsSync(currentPath) && Fs.statSync(currentPath).isDirectory()) continue;
			if (!Fs.existsSync(currentPath)) {
				Fs.mkdirSync(currentPath);
			} else {
				throw 'Could not create directory $currentPath because a file already exists at this path';
			}
		}
	}

}

enum OutputType {
	Global;
	Modular;
}