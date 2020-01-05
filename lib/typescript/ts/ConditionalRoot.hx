package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2455:5
**/
@:native('ts.ConditionalRoot')
extern interface ConditionalRoot {
	var node: typescript.ts.ConditionalTypeNode;
	var checkType: typescript.ts.Type;
	var extendsType: typescript.ts.Type;
	var trueType: typescript.ts.Type;
	var falseType: typescript.ts.Type;
	var isDistributive: Bool;
	@:optional
	var inferTypeParameters: Array<typescript.ts.TypeParameter>;
	@:optional
	var outerTypeParameters: Array<typescript.ts.TypeParameter>;
	@:optional
	var instantiations: typescript.ts.Map<typescript.ts.Type>;
	@:optional
	var aliasSymbol: typescript.ts.Symbol;
	@:optional
	var aliasTypeArguments: Array<typescript.ts.Type>;
}

