package tool;

import typescript.ts.FileReference;
import typescript.ts.SourceFile;
import typescript.Ts;
import typescript.ts.CompilerHost;
import typescript.ts.Program;

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

	static public function getSourceFileFromReference(program: Program, sourceFile: SourceFile, fileReference: FileReference): Null<SourceFile> {
		var internalMethod: (SourceFile, FileReference) -> Null<SourceFile> = js.Syntax.field(program, 'getSourceFileFromReference');
		return internalMethod(sourceFile, fileReference);
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

	public static function getExportsOfSourceFile(program: Program, sourceFile: SourceFile) {
		var tc = program.getTypeChecker();
		var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);
		if (sourceFileSymbol != null) {
			// return tc.getExportsOfModule(sourceFileSymbol); // seems to miss symbols like export =
			var exports = [];
			if (sourceFileSymbol.exports != null) sourceFileSymbol.exports.forEach((symbol, key) -> {
				exports.push(symbol);
			});
			if (sourceFileSymbol.globalExports != null) sourceFileSymbol.globalExports.forEach((symbol, key) -> {
				exports.push(symbol);
			});
			return exports.map(tc.getExportSymbolOfSymbol);
		} else {
			// sourcefile symbols are visible in the global scope
			return getDeclarationSymbolsInSourceFile(program, sourceFile);
		}
	}

}