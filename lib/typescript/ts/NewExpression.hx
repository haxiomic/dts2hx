package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1140:5
**/
@:native('ts.NewExpression')
extern interface NewExpression extends typescript.ts.PrimaryExpression {
	var expression: typescript.ts.LeftHandSideExpression;
	@:optional
	var typeArguments: typescript.ts.NodeArray<typescript.ts.TypeNode>;
	@:optional
	var arguments: typescript.ts.NodeArray<typescript.ts.Expression>;
}

