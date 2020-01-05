package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1088:5
**/
@:native('ts.PropertyAccessExpression')
extern interface PropertyAccessExpression extends typescript.ts.MemberExpression {
	var expression: typescript.ts.LeftHandSideExpression;
	@:optional
	var questionDotToken: typescript.ts.QuestionDotToken;
	var name: typescript.ts.Identifier;
}

