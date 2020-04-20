package tool;

import typescript.ts.FileReference;
import typescript.ts.SourceFile;
import typescript.Ts;
import typescript.ts.CompilerHost;
import typescript.ts.Program;
import typescript.ts.Symbol;
using TsInternal;
using tool.TsSymbolTools;

class TsProgramTools {

	static public function getAllDiagnostics(program: Program) {
		return program.getGlobalDiagnostics()
			.concat(program.getOptionsDiagnostics())
			.concat(program.getSemanticDiagnostics())
			.concat(program.getSyntacticDiagnostics())
			.concat(program.getDeclarationDiagnostics())
			.concat(program.getConfigFileParsingDiagnostics());
	}

	static public function resolveAllTypeReferenceDirectives(program: Program, host: CompilerHost) {
		var sourceFiles = program.getSourceFiles().filter(s -> !program.isSourceFileDefaultLibrary(s));
		var typeReferences = [];
		for (s in sourceFiles) {
			for (t in s.typeReferenceDirectives) {
				var resolved = Ts.resolveTypeReferenceDirective(t.fileName, s.fileName, program.getCompilerOptions(), host);
				typeReferences.push(resolved);
			}
		}
		return typeReferences;
	}

	public static function getDeclarationSymbolsInSourceFile(program: Program, sourceFile: SourceFile) {
		var tc = program.getTypeChecker();
		// get all globally visible symbols and filter for those that have a declaration in the sourceFile
		return tc.getSymbolsInScope(sourceFile, 0xFFFFFF)
			.filter(
				symbol -> {
					if (symbol.declarations != null) for (declaration in symbol.declarations)
						if (declaration.getSourceFile() == sourceFile)
							return true;
					return false;
				}
			)
			.map(tc.getExportSymbolOfSymbol);
	}
	
	/**
		All exposed symbols of a source file
	**/
	public static function getExposedSymbolsOfSourceFile(program: Program, sourceFile: SourceFile): Array<Symbol> {
		var tc = program.getTypeChecker();
		var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);
		if (sourceFileSymbol != null) {
			// return tc.getExportsOfModule(sourceFileSymbol); // seems to miss symbols like export =
			// var exports = [];
			// if (sourceFileSymbol.exports != null) sourceFileSymbol.exports.forEach((symbol, key) -> {
			// 	exports.push(symbol);
			// });
			// if (sourceFileSymbol.globalExports != null) sourceFileSymbol.globalExports.forEach((symbol, key) -> {
			// 	exports.push(symbol);
			// });
			// return exports.map(tc.getExportSymbolOfSymbol);
			return [sourceFileSymbol];
		} else {
			// sourcefile symbols are visible in the global scope
			return getDeclarationSymbolsInSourceFile(program, sourceFile);
		}
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

	public static function walkReferencedSourceFiles(program: Program, sourceFile: SourceFile, onSourceFile: (SourceFile) -> Void) {
		onSourceFile(sourceFile);

		// include tripple-slash referenced sourceFiles
		for (fileRef in sourceFile.referencedFiles) {
			var referenceSourceFile = program.getSourceFileFromReference(sourceFile, fileRef);
			if (referenceSourceFile != null) {
				walkReferencedSourceFiles(program, referenceSourceFile, onSourceFile);
			}
		}
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