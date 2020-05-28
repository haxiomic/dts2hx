package tool;

import ds.OnceOnlyQueue;
import typescript.ts.PackageId;
import typescript.ts.Identifier;
import typescript.ts.Statement;
import typescript.ts.InternalSymbolName;
import typescript.ts.FileReference;
import typescript.ts.SourceFile;
import typescript.Ts;
import typescript.ts.CompilerHost;
import typescript.ts.Program;
import typescript.ts.Symbol;
using TsInternal;
using tool.TsSymbolTools;
using StringTools;
using Lambda;

class TsProgramTools {

	static public function getAllDiagnostics(program: Program) {
		return program.getGlobalDiagnostics()
			.concat(program.getOptionsDiagnostics())
			.concat(program.getSemanticDiagnostics())
			.concat(program.getSyntacticDiagnostics())
			.concat(program.getDeclarationDiagnostics())
			.concat(program.getConfigFileParsingDiagnostics());
	}

	static public function isAmbientModule(program: Program, moduleName: String) {
		var tc = program.getTypeChecker();
		return tc.getAmbientModules().exists(s -> tool.StringTools.unwrapQuotes(s.name) == normalizeModuleName(moduleName));
	}

	static public function getDependencies(program: Program, sourceFiles: Array<SourceFile>, normalizedInputModuleName: String, host: CompilerHost) {
		var moduleDependencies = new Array<{ normalizedModuleName: String, packageInfo: PackageId }>();

		var compilerOptions = program.getCompilerOptions();

		inline function recordDependency(packageInfo: PackageId) {
			var normalizedModuleName = normalizeModuleName(packageInfo.name);
			// check dependency hasn't already been recorded
			if (
				!moduleDependencies.exists(m -> m.normalizedModuleName == normalizedModuleName) &&
				normalizedModuleName != normalizedInputModuleName
			) {
				moduleDependencies.push({
					normalizedModuleName: normalizedModuleName,
					packageInfo: packageInfo
				});
			}
		}

		for (sourceFile in sourceFiles) {
			walkReferencedSourceFiles(program, sourceFile, host, false, (sourceFile) -> {
				var referenceInfo = Ts.preProcessFile(sourceFile.text);

				var externalTypeReferences =
					referenceInfo.typeReferenceDirectives
					.concat(referenceInfo.importedFiles)
					.filter(fileRef ->
						!TsProgramTools.isDirectPathReferenceModule(fileRef.fileName) &&
						!TsProgramTools.isAmbientModule(program, fileRef.fileName)
					);

				for (typeReference in externalTypeReferences) {
					var result = Ts.resolveTypeReferenceDirective(typeReference.fileName, sourceFile.fileName, compilerOptions, host);
					if (result.resolvedTypeReferenceDirective != null) {
						if (result.resolvedTypeReferenceDirective.packageId != null) {
							recordDependency(result.resolvedTypeReferenceDirective.packageId);
						}
					} else {
						Log.warn('Definitions not found for module <b>${typeReference.fileName}</>', sourceFile);
					}
				}
			});
		}

		return moduleDependencies;
	}

	public static function getGlobalScopeSymbolsInSourceFile(program: Program, sourceFile: SourceFile) {
		var tc = program.getTypeChecker();

		var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);

		var globalSymbols = new Array<Symbol>();

		// if there's a source-file module symbol then this sourceFile does not expose anything to the global scope
		// however there's an exception if `declare global {...}` is used. We can get declare global symbols by searching sourceFile.moduleAugmentations
		if (sourceFileSymbol == null) {
			var locals: js.lib.Map<String, Symbol> = cast TsInternal.getSourceFileLocals(sourceFile);
			locals.forEach((localSymbol, key, _) -> {
				globalSymbols.push(tc.getExportSymbolOfSymbol(localSymbol));
			});
		} else {
			// this is a module-access source file, however it has a special field 'globalExports'
			// these symbols seem become visible when you use /// <reference types="" />
			if (sourceFileSymbol.globalExports != null) {
				sourceFileSymbol.globalExports.forEach((s, _) -> globalSymbols.push(s));
			}
		}

		// find instances of `declare global { ... }` and add symbols
		var moduleAugmentations = TsInternal.getSourceFileModuleAugmentations(sourceFile);
		var globalAugmentations = new Array<Symbol>();
		for (moduleAugmentation in moduleAugmentations) {
			if (Ts.isIdentifier(moduleAugmentation)) {
				var ident: Identifier = cast moduleAugmentation;
				var identSymbol = tc.getSymbolAtLocation(ident);
				if (identSymbol != null && identSymbol.escapedName == InternalSymbolName.Global) {
					globalAugmentations.push(identSymbol);
				}
			}
		}

		for (g in globalAugmentations) {
			for (s in tc.getExportsOfModule(g)) {
				globalSymbols.push(tc.getExportSymbolOfSymbol(s));
			}
		}

		return globalSymbols;
	}
	
	/**
		All exposed symbols of a source file
	**/
	public static function getExposedSymbolsOfSourceFile(program: Program, sourceFile: SourceFile): Array<Symbol> {
		var tc = program.getTypeChecker();

		var globalScopeSymbols = getGlobalScopeSymbolsInSourceFile(program, sourceFile);
		var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);

		return sourceFileSymbol != null ? [sourceFileSymbol].concat(globalScopeSymbols) : globalScopeSymbols;
	}

	public static function getTopLevelDeclarationSymbols(program: Program) {
		var tc = program.getTypeChecker();
		var seenSymbols = new Map<Int, Symbol>();
		var result = new Array<Symbol>();
		inline function addSymbol(symbol: Symbol) {
			symbol = tc.getExportSymbolOfSymbol(symbol);
			if (!seenSymbols.exists(symbol.getId())) {
				seenSymbols.set(symbol.getId(), symbol);
				result.push(symbol);
			}
		}
		for (sourceFile in program.getSourceFiles()) {
			var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);
			if (sourceFileSymbol != null) addSymbol(sourceFileSymbol);
			for (symbol in tc.getSymbolsInScope(sourceFile, 0xFFFFFF)) {
				addSymbol(symbol);
			}
		}
		return result;
	}

	public static function walkReferencedSourceFiles(program: Program, sourceFile: SourceFile, host: CompilerHost, includeLocalModuleReferences: Bool, onSourceFile: (SourceFile) -> Void, ?visitedSourceFileStack: Array<SourceFile>) {
		if (visitedSourceFileStack == null) {
			visitedSourceFileStack = [];
		}

		if (visitedSourceFileStack.indexOf(sourceFile) == -1) {
			onSourceFile(sourceFile);
			visitedSourceFileStack.push(sourceFile);
		} else {
			// already visited, exit to prevent import recursion
			return;
		}

		var referenceInfo = Ts.preProcessFile(sourceFile.text);
		
		var localFileReferences = referenceInfo.referencedFiles;

		// include **relative** module references
		if (includeLocalModuleReferences) {
			var relativeModuleReferences =
				/// <reference type="./example" />
				referenceInfo.typeReferenceDirectives
				// `import * from './example'
				.concat(referenceInfo.importedFiles)
				.filter(fileRef -> isDirectPathReferenceModule(fileRef.fileName));
				
			localFileReferences = localFileReferences.concat(relativeModuleReferences);
		}


		// include triple-slash path referenced sourceFiles
		/// <reference path="example.d.ts" />
		for (fileRef in localFileReferences) {
			var referenceSourceFile = program.getSourceFileFromReference(sourceFile, fileRef);
			if (referenceSourceFile != null) {
				walkReferencedSourceFiles(program, referenceSourceFile, host, includeLocalModuleReferences, onSourceFile, visitedSourceFileStack);
			}
		}
	}


	static public function assignModuleNames(program: Program, moduleSearchPath: String, host: CompilerHost) {
		var compilerOptions = program.getCompilerOptions();

		var packageNames = new OnceOnlyQueue();

		for (sourceFile in program.getSourceFiles()) {
			var lookupName = FileTools.withRelativePrefix(removeTsExtension(sourceFile.fileName));
			var result = Ts.resolveModuleName(lookupName, moduleSearchPath + '/.', compilerOptions, host);
			if (result.resolvedModule != null) {

				if (result.resolvedModule.packageId != null) {
					var packageModuleName = normalizeModuleName(result.resolvedModule.packageId.name);
					sourceFile.moduleName = packageModuleName + '/' + removeTsExtension(result.resolvedModule.packageId.subModuleName);
					setParentModuleName(sourceFile, packageModuleName);
				} else {
					// not part of a package
					sourceFile.moduleName = normalizeModuleName(FileTools.withRelativePrefix(FileTools.cwdRelativeFilePath(lookupName)));
					setParentModuleName(sourceFile, sourceFile.moduleName);
				}

				if (!sourceFile.hasNoDefaultLib && result.resolvedModule.packageId != null && result.resolvedModule.packageId.name != null) {
					packageNames.tryEnqueue(result.resolvedModule.packageId.name);
				}
			} else {
				Log.warn('Internal error: Failed to resolve module <b>$lookupName</>');
			}
		}

		// now replace .moduleName for the default source file of packages
		// for example, a package.json might define the types to be "index.d.ts", this source file should have .moduleName set to the package-name, not package/index.d.ts
		while (true) {
			var packageName = packageNames.dequeue();
			if (packageName == null) break;
			var result = Ts.resolveModuleName(packageName, moduleSearchPath + '/.', compilerOptions, host);
			if (result.resolvedModule != null) {
				var defaultTypesSourceFile = program.getSourceFile(result.resolvedModule.resolvedFileName);
				if (defaultTypesSourceFile != null) {
					defaultTypesSourceFile.moduleName = normalizeModuleName(packageName);
				} else {
					// it's valid for this source file to not be included in the compilation
				}
			} else throw 'Failed to resolve module';
		}
	}

	/**
		Make sure `assignModuleNames()` is executed before using this method
	**/
	static public function getParentModuleName(sourceFile: SourceFile): String {
		// this is an extra property added to sourceFiles
		var parentModuleName = Reflect.field(sourceFile, '_dts2hx_parentModuleName');
		if (parentModuleName == null) {
			throw 'Field _dts2hx_parentModuleName not set, this should have been assigned in assignModuleNames()';
		}
		return parentModuleName;
	}

	static function setParentModuleName(sourceFile: SourceFile, value: String) {
		Reflect.setField(sourceFile, '_dts2hx_parentModuleName', value);
	}

	static public function removeTsExtension(fileName: String) {
		var extPattern = ~/(\.d\.ts|\.ts|\.tsx|\.js|\.jsx|\.json)$/i;
		return if (extPattern.match(fileName)) {
			extPattern.matchedLeft();
		} else {
			fileName;
		}
	}

	/**
		Remove @types prefix, convert backslashes to forward slashes and make path relative to cwd.
		Examples:
		- `@types/lib` -> `lib` 
		- `.\modules\example` -> `./modules/example`
		- `/Users/X/modules/example/` -> `./modules/example`
	**/
	public static function normalizeModuleName(moduleName: String) {
		var isRelativePath = moduleName.charAt(0) == '.';
		
		// make absolute paths into paths relative to the cwd
		if (TsProgramTools.isDirectPathReferenceModule(moduleName)) {
			moduleName = FileTools.cwdRelativeFilePath(moduleName);
		}

		// normalize relative path strings like example/./test -> example/test
		// replace backslashes with forward slashes to normalize for windows paths
		moduleName = haxe.io.Path.normalize(moduleName);

		var moduleNameParts = moduleName.split('/');

		// remove @types prefix
		if (moduleNameParts[0] == '@types' && moduleNameParts.length > 1) {
			moduleNameParts.shift();
		}

		var normalized = moduleNameParts.join('/');

		// we lose the ./ in normalization, so add it back afterwards
		return isRelativePath ? './' + normalized : normalized; 
	}

	/**
		Modules might be referenced by a direct path rather than a module name
		For example: ./project/module
	**/
	static public function isDirectPathReferenceModule(moduleName: String) {
		var c0 = moduleName.charAt(0);
		return c0 == '.' || c0 == '/';
	}

}