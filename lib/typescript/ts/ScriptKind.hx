package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2709:5
**/
@:native('ts.ScriptKind')
extern enum abstract ScriptKind(Int) from Int to Int {
	var Unknown;
	var JS;
	var JSX;
	var TS;
	var TSX;
	var External;
	var JSON;
	/**
	Used on extensions that doesn't define the ScriptKind but the content defines it.
	Deferred extensions are going to be included in all project contexts.
	**/
	var Deferred;
}

