package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:572:5
**/
@:native('ts.TypeParameterDeclaration')
extern interface TypeParameterDeclaration extends typescript.ts.NamedDeclaration {
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

