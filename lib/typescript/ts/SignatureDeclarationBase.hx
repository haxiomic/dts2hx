package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:581:5
**/
@:native('ts.SignatureDeclarationBase')
extern interface SignatureDeclarationBase extends typescript.ts.NamedDeclaration {
	@:optional
	var typeParameters: typescript.ts.NodeArray<typescript.ts.TypeParameterDeclaration>;
	var parameters: typescript.ts.NodeArray<typescript.ts.ParameterDeclaration>;
	@:optional
	var type: typescript.ts.TypeNode;
}

