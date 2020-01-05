package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1796:5
**/

typedef UnparsedSource = typescript.ts.Node & {
	var fileName: String;
	var text: String;
	var prologues: Array<typescript.ts.UnparsedPrologue>;
	var helpers: Null<Array<typescript.ts.UnscopedEmitHelper>>;
	var referencedFiles: Array<typescript.ts.FileReference>;
	var typeReferenceDirectives: Null<Array<String>>;
	var libReferenceDirectives: Array<typescript.ts.FileReference>;
	@:optional
	var hasNoDefaultLib: Bool;
	@:optional
	var sourceMapPath: String;
	@:optional
	var sourceMapText: String;
	@:optional
	var syntheticReferences: Array<typescript.ts.UnparsedSyntheticReference>;
	var texts: Array<typescript.ts.UnparsedSourceText>;
}

