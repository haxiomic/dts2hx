package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:582:5
**/

typedef TypeParameterDeclaration = typescript.ts.NamedDeclaration & {
	/**
	Note: Consider calling `getEffectiveConstraintOfTypeParameter`
	**/
	@:optional
	var constraint: typescript.ts.TypeNode;
	@:native('default')
	@:optional
	var default_: typescript.ts.TypeNode;
	@:optional
	var expression: typescript.ts.Expression;
}

