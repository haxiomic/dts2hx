package typescript.ts;


/**
This interface is a base interface for ObjectLiteralExpression and JSXAttributes to extend from. JSXAttributes is similar to
ObjectLiteralExpression in that it contains array of properties; however, JSXAttributes' properties can only be
JSXAttribute or JSXSpreadAttribute. ObjectLiteralExpression, on the other hand, can only have properties of type
ObjectLiteralElement (e.g. PropertyAssignment, ShorthandPropertyAssignment etc.)

Generated from: test-definitions/typescript/typescript-extended.d.ts:1080:5
**/

typedef ObjectLiteralExpressionBase<T> = typescript.ts.PrimaryExpression & {
	var properties: typescript.ts.NodeArray<T>;
}

