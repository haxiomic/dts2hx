package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1680:5
**/
@:native('ts.JSDocTypeLiteral')
extern interface JSDocTypeLiteral extends typescript.ts.JSDocType {
	@:optional
	var jsDocPropertyTags: Array<typescript.ts.JSDocPropertyLikeTag>;
	/**
	If true, then this type literal represents an *array* of its type.
	**/
	@:optional
	var isArrayType: Bool;
}

