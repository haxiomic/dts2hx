package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:790:5
**/

typedef TypePredicateNode = typescript.ts.TypeNode & {
	@:optional
	var assertsModifier: typescript.ts.AssertsToken;
	var parameterName: haxe.extern.EitherType<typescript.ts.Identifier, typescript.ts.ThisTypeNode>;
	@:optional
	var type: typescript.ts.TypeNode;
}

