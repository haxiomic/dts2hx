package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:752:5
**/
@:native('ts.ImportTypeNode')
extern interface ImportTypeNode extends typescript.ts.NodeWithTypeArguments {
	@:optional
	var isTypeOf: Bool;
	var argument: typescript.ts.TypeNode;
	@:optional
	var qualifier: typescript.ts.EntityName;
}

