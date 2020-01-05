package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:985:5
**/
@:native('ts.ConditionalExpression')
extern interface ConditionalExpression extends typescript.ts.Expression {
	var condition: typescript.ts.Expression;
	var questionToken: typescript.ts.QuestionToken;
	var whenTrue: typescript.ts.Expression;
	var colonToken: typescript.ts.ColonToken;
	var whenFalse: typescript.ts.Expression;
}

