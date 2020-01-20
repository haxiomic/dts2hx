package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1949:5
**/

typedef CustomTransformers = {
	/**
	Custom transformers to evaluate before built-in .js transformations.
	**/
	@:optional
	var before: Array<haxe.extern.EitherType<typescript.ts.TransformerFactory<typescript.ts.SourceFile>, typescript.ts.CustomTransformerFactory>>;
	/**
	Custom transformers to evaluate after built-in .js transformations.
	**/
	@:optional
	var after: Array<haxe.extern.EitherType<typescript.ts.TransformerFactory<typescript.ts.SourceFile>, typescript.ts.CustomTransformerFactory>>;
	/**
	Custom transformers to evaluate after built-in .d.ts transformations.
	**/
	@:optional
	var afterDeclarations: Array<haxe.extern.EitherType<typescript.ts.TransformerFactory<haxe.extern.EitherType<typescript.ts.Bundle, typescript.ts.SourceFile>>, typescript.ts.CustomTransformerFactory>>;
}

