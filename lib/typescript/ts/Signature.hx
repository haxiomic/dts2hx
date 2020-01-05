package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2483:5
**/
@:native('ts.Signature')
extern interface Signature {
	@:optional
	var declaration: haxe.extern.EitherType<typescript.ts.SignatureDeclaration, typescript.ts.JSDocSignature>;
	@:optional
	var typeParameters: Array<typescript.ts.TypeParameter>;
	var parameters: Array<typescript.ts.Symbol>;
	function getDeclaration(): typescript.ts.SignatureDeclaration;
	function getTypeParameters(): Null<Array<typescript.ts.TypeParameter>>;
	function getParameters(): Array<typescript.ts.Symbol>;
	function getReturnType(): typescript.ts.Type;
	function getDocumentationComment(typeChecker: Null<typescript.ts.TypeChecker>): Array<typescript.ts.SymbolDisplayPart>;
	function getJsDocTags(): Array<typescript.ts.JSDocTagInfo>;
}

