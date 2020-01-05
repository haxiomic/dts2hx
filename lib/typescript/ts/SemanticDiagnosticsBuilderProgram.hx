package typescript.ts;


/**
The builder that caches the semantic diagnostics for the program and handles the changed files and affected files

Generated from: test-definitions/typescript/typescript-extended.d.ts:4531:5
**/

typedef SemanticDiagnosticsBuilderProgram = typescript.ts.BuilderProgram & {
	/**
	Gets the semantic diagnostics from the program for the next affected file and caches it
	Returns undefined if the iteration is complete
	**/
	function getSemanticDiagnosticsOfNextAffectedFile(?cancellationToken: typescript.ts.CancellationToken, ?ignoreSourceFile: (sourceFile: typescript.ts.SourceFile) -> Bool): typescript.ts.AffectedFileResult<Array<typescript.ts.Diagnostic>>;
}

