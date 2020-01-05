package typescript.ts;


/**
Several node kinds share function-like features such as a signature,
a name, and a body. These nodes should extend FunctionLikeDeclarationBase.
Examples:
- FunctionDeclaration
- MethodDeclaration
- AccessorDeclaration

Generated from: test-definitions/typescript/typescript-extended.d.ts:693:5
**/
@:native('ts.FunctionLikeDeclarationBase')
extern interface FunctionLikeDeclarationBase extends typescript.ts.SignatureDeclarationBase {
	var _functionLikeDeclarationBrand: Any;
	@:optional
	var asteriskToken: typescript.ts.AsteriskToken;
	@:optional
	var questionToken: typescript.ts.QuestionToken;
	@:optional
	var exclamationToken: typescript.ts.ExclamationToken;
	@:optional
	var body: haxe.extern.EitherType<typescript.ts.Block, typescript.ts.Expression>;
}

