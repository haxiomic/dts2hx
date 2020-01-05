package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:780:5
**/
@:native('ts.TypePredicateNode')
extern interface TypePredicateNode extends typescript.ts.TypeNode {
	@:optional
	var assertsModifier: typescript.ts.AssertsToken;
	var parameterName: haxe.extern.EitherType<typescript.ts.Identifier, typescript.ts.ThisTypeNode>;
	@:optional
	var type: typescript.ts.TypeNode;
}

