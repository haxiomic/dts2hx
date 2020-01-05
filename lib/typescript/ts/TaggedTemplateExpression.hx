package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1146:5
**/
@:native('ts.TaggedTemplateExpression')
extern interface TaggedTemplateExpression extends typescript.ts.MemberExpression {
	var tag: typescript.ts.LeftHandSideExpression;
	@:optional
	var typeArguments: typescript.ts.NodeArray<typescript.ts.TypeNode>;
	var template: typescript.ts.TemplateLiteral;
}

