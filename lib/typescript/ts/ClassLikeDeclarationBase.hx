package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1381:5
**/
@:native('ts.ClassLikeDeclarationBase')
extern interface ClassLikeDeclarationBase extends typescript.ts.NamedDeclaration {
	@:optional
	var typeParameters: typescript.ts.NodeArray<typescript.ts.TypeParameterDeclaration>;
	@:optional
	var heritageClauses: typescript.ts.NodeArray<typescript.ts.HeritageClause>;
	var members: typescript.ts.NodeArray<typescript.ts.ClassElement>;
}

