package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1666:5
**/
@:native('ts.JSDocPropertyLikeTag')
extern interface JSDocPropertyLikeTag extends typescript.ts.JSDocTag {
	var name: typescript.ts.EntityName;
	@:optional
	var typeExpression: typescript.ts.JSDocTypeExpression;
	/**
	Whether the property name came before the type -- non-standard for JSDoc, but Typescript-like
	**/
	var isNameFirst: Bool;
	var isBracketed: Bool;
}

