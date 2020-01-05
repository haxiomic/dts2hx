package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:532:5
**/
@:native('ts.Identifier')
extern interface Identifier extends typescript.ts.PrimaryExpression {
	/**
	Prefer to use `id.unescapedText`. (Note: This is available only in services, not internally to the TypeScript compiler.)
	Text of identifier, but if the identifier begins with two underscores, this will begin with three.
	**/
	var escapedText: typescript.ts.__String;
	@:optional
	var originalKeywordKind: typescript.ts.SyntaxKind;
	@:optional
	var isInJSDocNamespace: Bool;
	final text: String;
}

