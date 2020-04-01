package tool;

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

}