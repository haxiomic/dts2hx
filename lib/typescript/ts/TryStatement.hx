package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1366:5
**/
@:native('ts.TryStatement')
extern interface TryStatement extends typescript.ts.Statement {
	var tryBlock: typescript.ts.Block;
	@:optional
	var catchClause: typescript.ts.CatchClause;
	@:optional
	var finallyBlock: typescript.ts.Block;
}

