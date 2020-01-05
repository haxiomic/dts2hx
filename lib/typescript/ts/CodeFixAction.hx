package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5215:5
**/

typedef CodeFixAction = typescript.ts.CodeAction & {
	/**
	Short name to identify the fix, for use by telemetry.
	**/
	var fixName: String;
	/**
	If present, one may call 'getCombinedCodeFix' with this fixId.
	This may be omitted to indicate that the code fix can't be applied in a group.
	**/
	@:optional
	var fixId: {};
	@:optional
	var fixAllDescription: String;
}

