package typescript.ts;


/**
The builder that can handle the changes in program and iterate through changed file to emit the files
The semantic diagnostics are cached per file and managed by clearing for the changed/affected files

Generated from: test-definitions/typescript/typescript-extended.d.ts:4552:5
**/

typedef EmitAndSemanticDiagnosticsBuilderProgram = typescript.ts.SemanticDiagnosticsBuilderProgram & {
	/**
	Emits the next affected file's emit result (EmitResult and sourceFiles emitted) or returns undefined if iteration is complete
	The first of writeFile if provided, writeFile of BuilderProgramHost if provided, writeFile of compiler host
	in that order would be used to write the files
	**/
	function emitNextAffectedFile(?writeFile: typescript.ts.WriteFileCallback, ?cancellationToken: typescript.ts.CancellationToken, ?emitOnlyDtsFiles: Bool, ?customTransformers: typescript.ts.CustomTransformers): typescript.ts.AffectedFileResult<typescript.ts.EmitResult>;
}

