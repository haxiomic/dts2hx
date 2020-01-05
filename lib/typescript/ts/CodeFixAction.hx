package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5215:5
**/
@:native('ts.CodeFixAction')
extern interface CodeFixAction extends typescript.ts.CodeAction {
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

