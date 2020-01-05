package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1971:5
**/
@:native('ts.EmitResult')
extern interface EmitResult {
	var emitSkipped: Bool;
	/**
	Contains declaration emit diagnostics
	**/
	var diagnostics: Array<typescript.ts.Diagnostic>;
	@:optional
	var emittedFiles: Array<String>;
}

