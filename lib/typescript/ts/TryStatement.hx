package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1376:5
**/

typedef TryStatement = typescript.ts.Statement & {
	var tryBlock: typescript.ts.Block;
	@:optional
	var catchClause: typescript.ts.CatchClause;
	@:optional
	var finallyBlock: typescript.ts.Block;
}

