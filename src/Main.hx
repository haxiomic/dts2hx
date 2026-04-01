import js.node.ChildProcess;
import Log.LogLevel;
import typemap.TypeMap;
import haxe.DynamicAccess;
import haxe.io.Path;
import haxe.macro.Expr.TypeDefinition;
import haxe.macro.Expr.ComplexType;
import haxe.macro.Expr.Field;
import haxe.macro.Expr.Position;
import haxe.macro.Expr.TypeDefKind;
import haxe.macro.Expr.TypeParam;
import hxargs.Args.ArgHandler;
import js.Node;
import js.node.Fs;
import tool.FileTools;
import tool.TsProgramTools;
import typescript.Ts;
import typescript.ts.CompilerOptions;
import typescript.ts.ModuleResolutionKind;
import typescript.ts.ResolvedModuleFull;

using Lambda;
using StringTools;
using tool.StringTools;
using tool.TsSymbolTools;

typedef CliOptions = {
	cwd: String,
	outputPath: String,
	tsConfigFilePath: String,
	tsCompilerOptions: Array<String>,
	moduleNames: Array<String>,
	moduleSearchPath: String,
	allDependencies: Bool,
	noOutput: Bool,
	locationComments: Bool,
	libWrapper: Bool,
	logLevel: LogLevel,
	stdLibMode: StdLibMode,
	hxnodejs: Bool,
	// experimental
	globalTypes: Bool,
	modularTypes: Bool,
	// package name used when generate global types
	globalPackageName: Null<String>,
	// mergedGlobal: Bool, // todo
	allowIntersectionRasterization: Bool,
	queueExternalSymbols: Bool,
	skipDependencies: Bool,
	enableTypeParameterConstraints: Bool,
	useEsModules: Bool,
}

@:nullSafety
class Main {

	static public final dts2hxPackageJson = Macro.getJson('package.json');
	static final defaultStdLibTypeMap: TypeMap = Macro.getJson('src/typemap/std-4.2.5.json');
	static final defaultHxnodejsTypeMap: TypeMap = Macro.getJson('src/typemap/hxnodejs-12.1.0.json');

	static function main() {
		Console.warnPrefix = '<b,yellow>> Warning:</b> ';
		Console.errorPrefix = '<b,red>> Error:</b> ';

		var userArgs = Node.process.argv.slice(2);

		var cliOptions: CliOptions = {
			cwd: null,
			outputPath: null,
			tsConfigFilePath: null,
			tsCompilerOptions: [],
			moduleNames: new Array<String>(),
			moduleSearchPath: '.',
			allDependencies: false,
			noOutput: false,
			locationComments: false,
			libWrapper: true,
			logLevel: Error,
			stdLibMode: SystemHaxe,
			hxnodejs: false,
			// experimental
			globalTypes: true,
			modularTypes: true,
			globalPackageName: 'global',
			// mergedGlobal: false, // todo
			allowIntersectionRasterization: false,
			queueExternalSymbols: false,
			skipDependencies: false,
			enableTypeParameterConstraints: true,
			useEsModules: false,
		}

		var help: Bool = false;
		var noColor: Bool = false;
		var silent: Bool = false;
		var defaultValueFormatting = 'yellow';
		var explicitGlobalPackageName = false;

		var argHandler: ArgHandler;
		argHandler = hxargs.Args.generate([
			@doc('Set output directory for generated externs (default <$defaultValueFormatting>".haxelib"</>)')
			['--output', '-o'] => (path: String) -> {
				cliOptions.outputPath = path;
			},

			@doc('Generate externs <b>only</> for global / ambient types into top-level package')
			['--global', '-g'] => () -> {
				cliOptions.globalTypes = true;
				cliOptions.modularTypes = false;
			},

			@doc('Generate externs <b>only</> for modular types (i.e. things you\'d import or require() in js) into top-level package')
			['--modular', '-m'] => () -> {
				cliOptions.globalTypes = false;
				cliOptions.modularTypes = true;
			},

			@doc('Convert all dependencies referenced in package.json (those that have type definitions)')
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

			@doc('Path to use when searching for modules')
			['--moduleSearchPath', '-p'] => (path: String) -> {
				cliOptions.moduleSearchPath = path;
			},

			@doc('Enables printing the corresponding source file and line number for each declaration')
			'--sourceLocation' => () -> {
				cliOptions.locationComments = true;
			},

			@doc('Disables converting dependencies of a module (using this may mean the generated haxe references external types that will not be generated)')
			'--skipDependencies' => () -> {
				cliOptions.skipDependencies = true;
			},
			// see https://github.com/haxiomic/dts2hx/issues/37#issuecomment-642242254
			@doc('Generate external types into library output, use with --skipDependencies to generate a self-contained library instead of multiple libraries')
			'--includeExternal' => () -> {
				cliOptions.queueExternalSymbols = true;
			},

			@doc('Enables generating type parameter constraints. This will often work fine for many modules but it is a WIP feature')
			'--constraints' => () -> {
				cliOptions.enableTypeParameterConstraints = true;
			},

			@doc('Set the name of the package for global modules (default <$defaultValueFormatting>"${cliOptions.globalPackageName}"</>)')
			'--globalPackageName' => (name: String) -> {
				name = StringTools.trim(name);
				cliOptions.globalPackageName = name == '' ? null : name;
				explicitGlobalPackageName = true;
			},

			@doc('Generate @:js.import metadata for ES module imports instead of @:jsRequire (requires Haxe 5+)')
			'--esm' => () -> {
				cliOptions.useEsModules = true;
			},

			@doc('Use map node.js types to hxnodejs where possible')
			'--hxnodejs' => () -> {
				cliOptions.hxnodejs = true;
			},

			@doc('Disables mapping types to the haxe standard library – this means externs will be generated for built-in types')
			'--noStdLib' => () -> {
				cliOptions.stdLibMode = None;
			},

			@doc('Disables wrapping the generated externs in a haxelib-style library. Use this option if you intend to use the externs via a class-path rather than as a library')
			'--noLibWrap' => () -> {
				cliOptions.libWrapper = false;
			},

			@doc('Runs conversion but doesn\'t save files')
			'--noOutput' => () -> {
				cliOptions.noOutput = true;
			},

			@doc('Disable terminal colors')
			'--noColor' => () -> noColor = true,
			// hidden alias
			'--no-color' => () -> noColor = true,

			@doc('Show this help')
			'--help' => () -> help = true,

			@doc('Disable command-line output')
			'--silent' => () -> silent = true,

			@doc('Disable printing warnings')
			'--noWarn' => () -> {
				cliOptions.logLevel = Error;
			},

			@doc('Print all logs')
			'--verbose' => () -> {
				cliOptions.logLevel = All;
			},

			// experimental options
			// @doc('Experimental flag to improve conversion of intersection types. Currently can cause infinite loop on some packages')
			'--allowIntersectionRasterization' => () -> {
				cliOptions.allowIntersectionRasterization = true;
			},

			'--noDts2hxVersion' => () -> {
				dts2hxPackageJson.version = 'x.x.x';
			},

			// deprecated
			// @doc('Disables generating externs for types exposed in the global scope (i.e. types accessible via @:native)')
			'--noGlobal' => () -> {
				cliOptions.globalTypes = false;
			},

			// deprecated
			// @doc('Disables generating externs for types exposed via modules (i.e. types accessible via @:jsRequire)')
			'--noModular' => () -> {
				cliOptions.modularTypes = false;
			},

			// deprecated
			// @doc('Use system haxe version when mapping types to the haxe standard library. By default, standard library types for haxe ${defaultStdLibTypeMap.haxeVersion} are used')
			'--useSystemHaxe' => () -> {
				cliOptions.stdLibMode = SystemHaxe;
			},

			@doc('Module name')
			_ => (arg: String) -> {
				if (arg.charAt(0) == '-') {
					throw 'Unknown argument "$arg"';
				}
				// remove ".d.ts" extension as this is a common point of confusion for users
				var moduleName = arg;
				for (ext in ['.d.ts','.ts','.dts']) {
					if (moduleName.endsWith(ext)) {
						moduleName = moduleName.substr(0,moduleName.length - ext.length);
						break;
					}
				}
				cliOptions.moduleNames.push(moduleName);
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

		Log.setPrintLogLevel(cliOptions.logLevel);

		// handle cli option special behaviors

		// if generating global-only types, we can avoid using the 'global.' package
		// unless the user has explicitly set globalPackageName
		if (cliOptions.globalTypes && !cliOptions.modularTypes && !explicitGlobalPackageName) {
			cliOptions.globalPackageName = null;
		}

		var defaultCompilerOptions = Ts.getDefaultCompilerOptions();
		defaultCompilerOptions.target = ES2015; // default to ES6 for lib types
		defaultCompilerOptions.types = []; // disable automatic node_modules/@types inclusion
		defaultCompilerOptions.moduleResolution = ModuleResolutionKind.NodeJs;
		// we set `strictNullChecks` to true by default so that
		// `number | null` is typed as `Union<number, null>` and not just `number`
		defaultCompilerOptions.strictNullChecks = true;

		var compilerOptions = defaultCompilerOptions;

		// add options from --tsconfig
		if (cliOptions.tsConfigFilePath != null) {
			var readResult = Ts.readConfigFile(cliOptions.tsConfigFilePath, (path) -> Ts.sys.readFile(path, 'utf8'));
			if (readResult.config != null) {
				var compilerOptionsObj = Reflect.field(readResult.config, 'compilerOptions');
				var result = Ts.convertCompilerOptionsFromJson(compilerOptionsObj, Node.process.cwd(), cliOptions.tsConfigFilePath);
				Log.diagnostics(result.errors);

				compilerOptions = extend(compilerOptions, result.options);
			} else {
				if (readResult.error != null) {
					Log.diagnostics([readResult.error]);
				}
			}
		}

		// add user-supplied typescript compiler options
		if (cliOptions.tsCompilerOptions.length > 0) {
			var result = Ts.parseCommandLine(cliOptions.tsCompilerOptions);
			Log.diagnostics(result.errors);
			compilerOptions = extend(compilerOptions, result.options);
		}

		var host = Ts.createCompilerHost(compilerOptions);

		// add package.json dependencies to list of modules
		if (cliOptions.allDependencies) {
			try {
				var packageJson = host.readFile('package.json');
				if (packageJson == null) {
					@:nullSafety(Off)
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
						switch result.resolvedModule.extension {
							case Dts, Ts, Tsx: // maybe we should limit to just Dts
								// normalize so we don't convert both @types/name and name separately
								var normalizedName = TsProgramTools.normalizeModuleName(moduleName);
								if (!cliOptions.moduleNames.has(normalizedName)) {
									cliOptions.moduleNames.push(normalizedName);
								}
							case Js, Json, Jsx, TsBuildInfo:
						}
						continue;
					}
					Log.warn('No type definitions found for <b>"${moduleName}"</b>');
				}
			} catch (e: String) {
				Log.error(e);
			}
		}

		// add modules from cli options, expanding packages with wildcard exports
		var moduleQueue = new ds.OnceOnlyQueue<String>();
		for (moduleName in cliOptions.moduleNames) {
			var expandedModules = expandWildcardExports(moduleName, cliOptions.moduleSearchPath, compilerOptions, host);
			if (expandedModules != null) {
				for (subModule in expandedModules) {
					moduleQueue.tryEnqueue(subModule);
				}
			} else {
				moduleQueue.tryEnqueue(moduleName);
			}
		}
		
		// add modules from compilerOptions
		for (moduleName in Ts.getAutomaticTypeDirectiveNames(compilerOptions, host)) {
			moduleQueue.tryEnqueue(moduleName);
		}

		// get std lib type map
		var systemHaxeVersion: Null<String> = null;
		var stdLibTypeMap = switch cliOptions.stdLibMode {
			case None: null;
			case DefaultTypeMap: defaultStdLibTypeMap;
			case SystemHaxe:
				// generate standard library type map using the system version of haxe
				try {
					var str = Std.string(ChildProcess.execSync('haxe --version')).trim();
					systemHaxeVersion = str;
					Console.log('Using standard library of system haxe version <b>$str</>');
					var typemapPath = Path.join([Node.__dirname, '../', 'src/typemap']);
					var stdLibJsonStr = ChildProcess.execSync('haxe -D TypeMapMacro --macro "StdLibMacro.getMap(true)" --js not-real.js --no-output', {
						cwd: typemapPath
					});
					haxe.Json.parse(stdLibJsonStr);
				} catch (e: Any) {
					// error code
					Log.error('Failed to generate standard library type map (using <b>${defaultStdLibTypeMap.haxeVersion}</> instead): $e');
					defaultStdLibTypeMap;
				}
		}

		var hxnodejsMap = if (cliOptions.hxnodejs) {
			defaultHxnodejsTypeMap;
		} else {
			null;
		}

		if (moduleQueue.empty()) {
			Log.error('No modules queued');
		}

		while (true) {
			var moduleName = moduleQueue.dequeue();
			if (moduleName == null) break; // finished queue

			var converterContext = convertTsModule(moduleName, cliOptions.moduleSearchPath, compilerOptions, stdLibTypeMap, hxnodejsMap, cliOptions, systemHaxeVersion);
			if (converterContext == null) continue;
			
			var moduleDependencies = converterContext.moduleDependencies;
			if (moduleDependencies.length > 0) {
				Log.log('<magenta>Module <b>$moduleName</> depends on <b>$moduleDependencies</></>');
			}
			if (!cliOptions.skipDependencies) for (moduleDependency in moduleDependencies) {
				// queue module to be converted 
				moduleQueue.tryEnqueue(moduleDependency.normalizedModuleName);
			}
		}
	}

	static public function convertTsModule(
		moduleName: String,
		moduleSearchPath: String,
		compilerOptions: CompilerOptions,
		stdLibTypeMap: Null<TypeMap>,
		hxnodejsMap: Null<TypeMap>,
		cliOptions: CliOptions,
		?targetHaxeVersion: String
	): Null<ConverterContext> {
		// Per-module ESM detection: if --esm is not explicitly set, auto-detect based on
		// the package's "type": "module" field and Haxe version support
		var moduleCliOptions = cliOptions;
		if (!cliOptions.useEsModules && targetHaxeVersion != null && versionAtLeast(targetHaxeVersion, 5, 0)) {
			var packageName = moduleName.split('/')[0];
			// scoped packages: @scope/name
			if (StringTools.startsWith(moduleName, '@') && moduleName.indexOf('/') != -1) {
				var parts = moduleName.split('/');
				packageName = parts[0] + '/' + parts[1];
			}
			var pkgJsonPath = moduleSearchPath + '/node_modules/' + packageName + '/package.json';
			try {
				var pkgJson = haxe.Json.parse(sys.io.File.getContent(pkgJsonPath));
				if (Reflect.field(pkgJson, 'type') == 'module') {
					// Clone cliOptions with ESM enabled for this module
					@:nullSafety(Off) moduleCliOptions = Reflect.copy(cliOptions);
					moduleCliOptions.useEsModules = true;
					Console.log('<b>$moduleName</>: ESM package detected, using <b>@:js.import</>');
				}
			} catch (e: Any) {}
		}

		var converter =
			try {
				new ConverterContext(moduleName, moduleSearchPath, compilerOptions, stdLibTypeMap, hxnodejsMap, moduleCliOptions);
			} catch (e: Any) {
				Log.error(e);
				return null;
			}


		var generateLibraryWrapper = cliOptions.libWrapper && converter.inputModule.packageId != null;

		// if output path is unset, default to either .haxelib/ or externs/ depending on whether or not the input module is a package
		var outputPath: String = if (cliOptions.outputPath != null) cliOptions.outputPath else {
			generateLibraryWrapper ? '.haxelib' : 'externs';
		}

		// in haxelib mode, use .current files to specify versions
		var haxelibMode = Path.withoutDirectory(Path.removeTrailingSlashes(outputPath.toLowerCase())) == '.haxelib';

		if (!cliOptions.noOutput) {
			// save modules to files
			var printer = new Printer();
			// Haxe 4.3+ supports `enum abstract` keyword syntax (replaces deprecated `@:enum abstract`)
			// Haxe 4.3+ supports `enum abstract` keyword syntax (replaces deprecated `@:enum abstract`)
			var haxeVer = if (targetHaxeVersion != null) targetHaxeVersion
				else if (stdLibTypeMap != null) stdLibTypeMap.haxeVersion
				else defaultStdLibTypeMap.haxeVersion;
			printer.useEnumAbstractKeyword = versionAtLeast(haxeVer, 4, 3);

			var libraryName = haxelibLibraryName(converter.packageName != null ? converter.packageName : converter.normalizedInputModuleName);
			var libraryVersion = converter.inputModule.packageId != null && converter.inputModule.packageId.version != null ? converter.inputModule.packageId.version : 'default';

			var outputLibraryPath = if (generateLibraryWrapper) {
				if (haxelibMode) {
					Path.join([outputPath, libraryName.replace('.', ','), libraryVersion.replace('.', ',')]);
				} else {
					Path.join([outputPath, libraryName]);
				}
			} else {
				outputPath;
			}

			if (haxelibMode) {
				var libRoot = Path.directory(outputLibraryPath);
				FileTools.touchDirectoryPath(libRoot);
				// write a .current file
				Fs.writeFileSync(Path.join([libRoot, '.current']), libraryVersion);
			}

			FileTools.touchDirectoryPath(outputLibraryPath);

			for (_ => haxeModule in converter.generatedModules) {
				var skipModule = false;

				// skip empty @valueModuleOnly classes
				if (haxeModule.meta != null) {
					var isValueModuleOnly = haxeModule.meta.find(m -> m.name == 'valueModuleOnly') != null;
					skipModule = skipModule || (isValueModuleOnly && haxeModule.fields.length == 0);
				}

				if (skipModule) continue;

				// Check if this typedef has @:native fields that need an abstract wrapper.
				// Haxe ignores @:native metadata on anonymous structure fields (issue #5105),
				// so we generate an abstract type with property accessors that use js.Syntax.field.
				var abstractWrapper: Null<{source: String}> = null;
				if (haxeModule.kind.match(TDAlias(TAnonymous(_) | TExtend(_, _)))) {
					var fields = switch haxeModule.kind {
						case TDAlias(TAnonymous(f)): f;
						case TDAlias(TExtend(_, f)): f;
						default: null;
					};
					if (fields != null && hasNativeFields(fields)) {
						abstractWrapper = generateNativeFieldAbstract(haxeModule, fields);
						if (abstractWrapper != null) {
							// Rename original typedef to Foo_
							haxeModule.name = '${haxeModule.name}_';
							haxeModule.doc = null;
						}
					}
				}

				var filePath = Path.join([outputLibraryPath].concat(haxeModule.pack).concat(['${haxeModule.name}.hx']));
				var printPackage = true;
				var moduleHaxeStr = printer.printTypeDefinition(haxeModule, printPackage);

				FileTools.touchDirectoryPath(Path.directory(filePath));
				Fs.writeFileSync(filePath, moduleHaxeStr);

				// Save the abstract wrapper alongside the raw typedef
				if (abstractWrapper != null) {
					var wrapperName = StringTools.replace(haxeModule.name, '_', '');
					var wrapperPath = Path.join([outputLibraryPath].concat(haxeModule.pack).concat(['$wrapperName.hx']));
					Fs.writeFileSync(wrapperPath, abstractWrapper.source);
				}
			}

			if (generateLibraryWrapper) {
				var packageJson = getModulePackageJson(moduleName, moduleSearchPath, converter.inputModule);
				// write a readme
				var readmeStr = generateReadme(moduleName, moduleSearchPath, converter, packageJson, stdLibTypeMap);
				Fs.writeFileSync(Path.join([outputLibraryPath, 'README.md']), readmeStr);

				// write haxelib.json
				var haxelibJsonStr = generateHaxelibJson(moduleName, moduleSearchPath, converter, packageJson);
				Fs.writeFileSync(Path.join([outputLibraryPath, 'haxelib.json']), haxelibJsonStr);
			}

			Console.success('<green>Saved externs for <b>$moduleName</> into <b>$outputLibraryPath/</></>');
		}

		return converter;
	}

	static function generateReadme(inputModuleName: String, moduleSearchPath: String, converter: ConverterContext, modulePackageJson: Null<Dynamic<Dynamic>>, stdLibTypeMap: Null<TypeMap>): String {
		var resolvedModule: ResolvedModuleFull = converter.inputModule;
		var dts2hxRepoUrl = dts2hxPackageJson.repository.url;
		var dts2hxRef = dts2hxRepoUrl != null ? '[dts2hx]($dts2hxRepoUrl)' : 'dts2hx';
		var typesModuleVersion: Null<String> = resolvedModule.packageId != null ? resolvedModule.packageId.version : null;
		var typesModuleName = resolvedModule.packageId != null ? resolvedModule.packageId.name : inputModuleName;
		var typesModuleUrl = if (modulePackageJson != null) {
			if (modulePackageJson.homepage != null) modulePackageJson.homepage;
			else if (modulePackageJson.bugs != null && modulePackageJson.bugs.url != null) modulePackageJson.bugs.url;
			else null;
		} else null;

		var typesModuleIdMarkdown = '${typesModuleName}${typesModuleVersion != null ? ' v$typesModuleVersion' : ''}';
		if (typesModuleUrl != null) {
			typesModuleIdMarkdown = '[$typesModuleIdMarkdown]($typesModuleUrl)';
		}

		var sections = new Array<String>();
		sections.push('# Haxe Externs for ${converter.packageName != null ? converter.packageName : converter.normalizedInputModuleName}');

		sections.push('
			Generated from **$typesModuleIdMarkdown** by **$dts2hxRef ${dts2hxPackageJson.version}** using **TypeScript ${typescript.Ts.version}** with arguments:

				dts2hx ${Node.process.argv.slice(2).join(' ')}
		');

		if (converter.moduleDependencies.length > 0) {
			sections.push(
				[
					'## Dependencies'
				].concat(
					converter.moduleDependencies.map(s -> '- ${s.normalizedModuleName}')
				).join('\n')
			);
		}

		if (modulePackageJson != null) {
			try if (modulePackageJson.contributors != null && modulePackageJson.contributors.length > 0) {
				sections .push(
					[
						'## Contributors to ${typesModuleName}'
					].concat(
						(modulePackageJson.contributors: Array<Dynamic<String>>).map(c -> c.url != null ? '- [${c.name}](${c.url})' : c.name)
					).join('\n')
				);
			} catch (e: Any) null;
		}

		return sections.map(s -> s.removeIndentation().trim()).join('\n\n');
	}

	/**
		For packages with wildcard exports (e.g. `"./*": "./dist/*.js"`) and no root entry point,
		discover all importable sub-modules by scanning for .ts/.d.ts files.
		Returns null if the package has a resolvable root entry (no expansion needed).
	**/
	static function expandWildcardExports(moduleName: String, moduleSearchPath: String, compilerOptions: typescript.ts.CompilerOptions, host: typescript.ts.CompilerHost): Null<Array<String>> {
		// Only expand bare package names (not sub-paths like "pkg/sub")
		if (moduleName.indexOf('/') != -1 && !StringTools.startsWith(moduleName, '@')) return null;
		if (moduleName.indexOf('/') != -1 && StringTools.startsWith(moduleName, '@')) {
			// scoped packages like @types/three — check if there's a sub-path after the scope
			var parts = moduleName.split('/');
			if (parts.length > 2) return null; // already a sub-path
		}

		// Check if the root module resolves to a substantive entry point
		var result = Ts.resolveModuleName(moduleName, moduleSearchPath + '/.', compilerOptions, host);

		// Find the package directory by looking for package.json in node_modules
		var packageDir: Null<String> = null;
		var hasWildcardExports = false;
		var searchDir = moduleSearchPath + '/node_modules/' + moduleName;
		var packageJsonFile = searchDir + '/package.json';
		if (sys.FileSystem.exists(packageJsonFile)) {
			packageDir = searchDir;
			try {
				var pkgJson = haxe.Json.parse(sys.io.File.getContent(packageJsonFile));
				var exports: Null<haxe.DynamicAccess<Dynamic>> = pkgJson.exports;
				if (exports != null) {
					hasWildcardExports = exports.exists('./*') || exports.exists('./**/*');
				}
			} catch (e: Any) {}
		}

		// If root resolves and no wildcard exports, no expansion needed
		if (result.resolvedModule != null && !hasWildcardExports) return null;
		// If no package found or no wildcard exports, can't expand
		if (packageDir == null || !hasWildcardExports) return null;

		// Scan for .ts and .d.ts files
		var modules = new Array<String>();
		function scanDir(dir: String, prefix: String) {
			try {
				for (entry in sys.FileSystem.readDirectory(dir)) {
					var fullPath = haxe.io.Path.join([dir, entry]);
					if (sys.FileSystem.isDirectory(fullPath)) {
						// Skip node_modules, .git, etc.
						if (entry == 'node_modules' || entry == '.git' || entry == 'dist') continue;
						scanDir(fullPath, prefix + entry + '/');
					} else if (StringTools.endsWith(entry, '.ts') && !StringTools.endsWith(entry, '.d.ts') && entry != 'index.ts') {
						var subModule = prefix + haxe.io.Path.withoutExtension(entry);
						var fullModuleName = moduleName + '/' + subModule;
						// Verify this module actually resolves
						var subResult = Ts.resolveModuleName(fullModuleName, moduleSearchPath + '/.', compilerOptions, host);
						if (subResult.resolvedModule != null) {
							modules.push(fullModuleName);
						}
					}
				}
			} catch (e: Any) {}
		}
		scanDir(packageDir, '');

		if (modules.length > 0) {
			Console.log('Expanded <b>$moduleName</> into <b>${modules.length}</> sub-modules');
			return modules;
		}
		return null;
	}

	/**
		Haxelib requires alpha-numeric library names
		See https://github.com/HaxeFoundation/haxelib/blob/e7cb62181303eb61737fe06b5784cab41a58a53f/src/haxelib/Data.hx#L243

		`@actions/core.js` -> `actions-core,js`
	**/
	/**
		Recursively strip TNamed wrappers from a ComplexType.
		Named parameters like `(err:Error, html:String) -> Void` cause parse errors
		when used inside property declarations `var x(get, set):...`.
	**/
	/**
		Recursively strip TNamed wrappers and convert TOptional to Null<T> in a ComplexType.
		Named parameters like `(err:Error, html:String)` and optional function-type args
		like `?(Error, String) -> Void` cause parse errors inside property declarations.
	**/
	static function stripNamed(t: ComplexType): ComplexType {
		return switch t {
			case TNamed(_, inner): stripNamed(inner);
			case TOptional(inner):
				// Convert ?T to Null<T> to avoid parse ambiguity in property types
				var stripped = stripNamed(inner);
				TPath({name: 'Null', pack: [], params: [TPType(stripped)]});
			case TFunction(args, ret): TFunction(args.map(stripNamed), stripNamed(ret));
			case TPath(p):
				if (p.params != null && p.params.length > 0) {
					TPath({
						name: p.name,
						pack: p.pack,
						sub: p.sub,
						params: p.params.map(tp -> switch tp {
							case TPType(ct): TPType(stripNamed(ct));
							default: tp;
						}),
					});
				} else t;
			default: t;
		}
	}

	static function hasNativeFields(fields: Array<haxe.macro.Expr.Field>): Bool {
		for (field in fields) {
			if (field.meta != null) {
				for (m in field.meta) {
					if (m.name == ':native') return true;
				}
			}
		}
		return false;
	}

	/**
		Generate a concrete abstract type as a string that wraps an anonymous typedef with @:native fields.
		Returns null if the typedef has no @:native fields.
	**/
	static function generateNativeFieldAbstract(haxeModule: TypeDefinition, fields: Array<Field>): Null<{source: String}> {
		var printer = new Printer();

		// Collect field info
		var nativeFields = new Array<{name: String, jsName: String, fieldType: String, doc: Null<String>, isOptional: Bool}>();
		for (field in fields) {
			var jsName = field.name;
			var isOptional = false;
			if (field.meta != null) {
				for (m in field.meta) {
					if (m.name == ':native' && m.params != null && m.params.length == 1) {
						switch m.params[0].expr {
							case EConst(CString(s, _)): jsName = s;
							default:
						}
					}
					if (m.name == ':optional') isOptional = true;
				}
			}

			var fieldType = switch field.kind {
				case FVar(t, _): t != null ? printer.printComplexType(stripNamed(t)) : 'Dynamic';
				case FProp(_, _, t, _): t != null ? printer.printComplexType(stripNamed(t)) : 'Dynamic';
				case FFun(f):
					@:nullSafety(Off) var argTypes: Array<ComplexType> = f.args.map(a -> {
						var t: ComplexType = a.type != null ? a.type : (macro :Dynamic);
						if (a.opt != null && a.opt) t = TOptional(t);
						return t;
					});
					printer.printComplexType(stripNamed(TFunction(argTypes, f.ret != null ? f.ret : (macro :Dynamic))));
			};

			nativeFields.push({name: field.name, jsName: jsName, fieldType: fieldType, doc: field.doc, isOptional: isOptional});
		}

		// Build type parameter string
		var typeParams = '';
		if (haxeModule.params != null && haxeModule.params.length > 0) {
			typeParams = '<' + haxeModule.params.map(p -> printer.printTypeParamDecl(p)).join(', ') + '>';
		}

		var innerName = '${haxeModule.name}_$typeParams';
		var buf = new StringBuf();
		buf.add('package ${haxeModule.pack.join(".")};\n\n');
		if (haxeModule.doc != null && haxeModule.doc != '') {
			buf.add('/**\n\t${StringTools.replace(haxeModule.doc, "\n", "\n\t")}\n**/\n');
		}
		buf.add('abstract ${haxeModule.name}$typeParams($innerName) from $innerName to $innerName {\n');

		for (f in nativeFields) {
			if (f.doc != null && f.doc != '') {
				buf.add('\t/**\n\t\t${StringTools.replace(f.doc, "\n", "\n\t\t")}\n\t**/\n');
			}
			if (f.isOptional) buf.add('\t@:optional\n');
			buf.add('\tpublic var ${f.name}(get, set):${f.fieldType};\n');
			buf.add('\tinline function get_${f.name}():${f.fieldType} return js.Syntax.field(cast this, \'${f.jsName}\');\n');
			buf.add('\tinline function set_${f.name}(v:${f.fieldType}):${f.fieldType} { js.Syntax.code("{0}[{1}] = {2}", this, \'${f.jsName}\', v); return v; }\n');
		}

		buf.add('}\n');
		return {source: buf.toString()};
	}

	static function writeAbstractAnonSupport(outputPath: String) {
		// AbstractAnon.hx
		var abstractAnonDir = Path.join([outputPath, 'ts']);
		FileTools.touchDirectoryPath(abstractAnonDir);
		Fs.writeFileSync(Path.join([abstractAnonDir, 'AbstractAnon.hx']), ABSTRACT_ANON_SRC);

		// abstractanon/Macro.hx
		var macroDir = Path.join([outputPath, 'ts', 'abstractanon']);
		FileTools.touchDirectoryPath(macroDir);
		Fs.writeFileSync(Path.join([macroDir, 'Macro.hx']), ABSTRACT_ANON_MACRO_SRC);
	}

	static final ABSTRACT_ANON_SRC = 'package ts;

/**
	Wraps an anonymous structure typedef so that @:native field metadata works correctly.
	Generated by dts2hx. See https://github.com/HaxeFoundation/haxe/issues/5105
**/
@:genericBuild(ts.abstractanon.Macro.build())
class AbstractAnon<T> {}
';

	static final ABSTRACT_ANON_MACRO_SRC = Macro.getFileContent('src/support/abstractanon/Macro.hx');

	static function versionAtLeast(version: String, major: Int, minor: Int): Bool {
		var parts = version.split('.');
		if (parts.length < 2) return false;
		var vMajor = Std.parseInt(parts[0]);
		var vMinor = Std.parseInt(parts[1]);
		if (vMajor == null || vMinor == null) return false;
		return vMajor > major || (vMajor == major && vMinor >= minor);
	}

	static function haxelibLibraryName(moduleName: String) {
		var safeName = moduleName.replace('/', '-').replace('\\', '-');
		// replace directory separators with -
		// replace space with -
		safeName = ~/\s+/.replace(safeName, '-');
		// remove all other invalid characters
		safeName = ~/[^\w.-]/ig.replace(safeName, '');
		if (safeName == '') {
			Log.error('Module name $moduleName cannot be converted to a safe haxelib library name');
			return moduleName;
		}
		return safeName;
	}

	static function generateHaxelibJson(inputModuleName: String, moduleSearchPath: String, converter: ConverterContext, modulePackageJson: Null<Dynamic<Dynamic>>): String {
		var resolvedModule: ResolvedModuleFull = converter.inputModule;
		var moduleName = converter.packageName != null ? converter.packageName : converter.normalizedInputModuleName;
		var moduleVersion: Null<String> = resolvedModule.packageId != null ? resolvedModule.packageId.version : null;
		var haxelib: Dynamic = {
			name: moduleName,
			tags: [moduleName, "externs", "typescript", "javascript", "dts2hx"],
			description: 'Externs for ${moduleName}${moduleVersion != null ? ' v$moduleVersion' : ''} automatically generated by dts2hx',
			contributors: ["haxiomic"],
			dependencies: { }
		}
		if (moduleVersion != null) {
			haxelib.version = moduleVersion;
		}
		// add dependencies
		for (moduleDependency in converter.moduleDependencies) {
			var dependencyVersion = moduleDependency.packageInfo.version;
			var dependencyName = haxelibLibraryName(moduleDependency.normalizedModuleName);
			Reflect.setField(haxelib.dependencies, dependencyName, dependencyVersion != null ? dependencyVersion : '');
		}
		return haxe.Json.stringify(haxelib, null, '\t');
	}

	static function getModulePackageJson(moduleName: String, moduleSearchPath: String, resolvedModule: ResolvedModuleFull): Null<Dynamic<Dynamic>> {
		var typesModuleName = resolvedModule.packageId != null ? resolvedModule.packageId.name : moduleName;
		return try {
			var packageJsonPath = js.Syntax.code('require.resolve({0}, {paths: [{1}]})', '$typesModuleName/package.json', moduleSearchPath);
			haxe.Json.parse(Fs.readFileSync(packageJsonPath, { encoding: "utf8" }));
		} catch (e: Any) null;
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
		Console.printlnFormatted('<b>dts2hx</b> <b>${dts2hxPackageJson.version}</> <red>alpha</> using <b>TypeScript ${typescript.Ts.version}</>');
		Console.println('TypeScript definition to haxe extern converter');
		Console.println('');
		Console.printlnFormatted('<b>Usage:</b>');
		Console.printlnFormatted('\tdts2hx <i,cyan>{moduleName}</> <i,cyan>{options}</>');
		Console.println('');

		Console.printlnFormatted('<b>Examples:</b>');
		Console.printlnFormatted('\tdts2hx three');
		Console.printlnFormatted('\tdts2hx --all');
		Console.printlnFormatted('\tdts2hx ./src/index --tsconfig ./tsconfig.json --verbose');
		Console.println('');

		Console.printFormatted('<b>Options:</>\n');

		var usageStringMaxLength = 0;

		var formattedOptions = [];

		for (item in argHandler.options) {
			if (item.doc == null) continue;

			var usageString = '${item.flags.join(', ')}';

			if (item.args.length > 0) {
				usageString += ' <i,light_cyan>' + item.args.map(a -> '{${a.opt?'?':''}${a.name}}').join(', ') + '</>';
			}

			usageString = '<bg_black,light_white>$usageString</>';
			
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
			'${f.usageString}$rPadding ${f.doc}\n';
		});

		Console.printFormatted(lines.join('\n') + '\n');
	}

}

enum StdLibMode {
	None;
	DefaultTypeMap;
	SystemHaxe;
}