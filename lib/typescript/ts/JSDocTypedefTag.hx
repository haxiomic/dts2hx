package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1646:5
**/
@:native('ts.JSDocTypedefTag')
extern interface JSDocTypedefTag extends typescript.ts.JSDocTag {
	@:optional
	var fullName: haxe.extern.EitherType<typescript.ts.JSDocNamespaceDeclaration, typescript.ts.Identifier>;
	@:optional
	var name: typescript.ts.Identifier;
	@:optional
	var typeExpression: haxe.extern.EitherType<typescript.ts.JSDocTypeExpression, typescript.ts.JSDocTypeLiteral>;
}

