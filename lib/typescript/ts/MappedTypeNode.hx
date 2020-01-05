package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:845:5
**/

typedef MappedTypeNode = typescript.ts.TypeNode & {
	@:optional
	var readonlyToken: haxe.extern.EitherType<typescript.ts.ReadonlyToken, haxe.extern.EitherType<typescript.ts.PlusToken, typescript.ts.MinusToken>>;
	var typeParameter: typescript.ts.TypeParameterDeclaration;
	@:optional
	var questionToken: haxe.extern.EitherType<typescript.ts.QuestionToken, haxe.extern.EitherType<typescript.ts.PlusToken, typescript.ts.MinusToken>>;
	@:optional
	var type: typescript.ts.TypeNode;
}

