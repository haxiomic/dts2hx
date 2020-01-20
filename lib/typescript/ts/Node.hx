package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:506:5
**/

typedef Node = typescript.ts.TextRange & {
	var kind: typescript.ts.SyntaxKind;
	var flags: typescript.ts.NodeFlags;
	@:optional
	var decorators: typescript.ts.NodeArray<typescript.ts.Decorator>;
	@:optional
	var modifiers: typescript.ts.ModifiersArray;
	var parent: typescript.ts.Node;
	function getSourceFile(): typescript.ts.SourceFile;
	function getChildCount(?sourceFile: typescript.ts.SourceFile): Float;
	function getChildAt(index: Float, ?sourceFile: typescript.ts.SourceFile): typescript.ts.Node;
	function getChildren(?sourceFile: typescript.ts.SourceFile): Array<typescript.ts.Node>;
	function getStart(?sourceFile: typescript.ts.SourceFile, ?includeJsDocComment: Bool): Float;
	function getFullStart(): Float;
	function getEnd(): Float;
	function getWidth(?sourceFile: typescript.ts.SourceFileLike): Float;
	function getFullWidth(): Float;
	function getLeadingTriviaWidth(?sourceFile: typescript.ts.SourceFile): Float;
	function getFullText(?sourceFile: typescript.ts.SourceFile): String;
	function getText(?sourceFile: typescript.ts.SourceFile): String;
	function getFirstToken(?sourceFile: typescript.ts.SourceFile): Null<typescript.ts.Node>;
	function getLastToken(?sourceFile: typescript.ts.SourceFile): Null<typescript.ts.Node>;
	function forEachChild<T>(cbNode: (node: typescript.ts.Node) -> Null<T>, ?cbNodeArray: (nodes: typescript.ts.NodeArray<typescript.ts.Node>) -> Null<T>): Null<T>;
}

