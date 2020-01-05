package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1406:5
**/
@:native('ts.InterfaceDeclaration')
extern interface InterfaceDeclaration extends typescript.ts.DeclarationStatement {
	@:optional
	var typeParameters: typescript.ts.NodeArray<typescript.ts.TypeParameterDeclaration>;
	@:optional
	var heritageClauses: typescript.ts.NodeArray<typescript.ts.HeritageClause>;
	var members: typescript.ts.NodeArray<typescript.ts.TypeElement>;
}

