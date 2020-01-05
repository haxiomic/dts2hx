package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:3006:5
**/

typedef Printer = {
	/**
	Print a node and its subtree as-is, without any emit transformations.
	**/
	function printNode(hint: typescript.ts.EmitHint, node: typescript.ts.Node, sourceFile: typescript.ts.SourceFile): String;
	/**
	Prints a list of nodes using the given format flags
	**/
	function printList<T>(format: typescript.ts.ListFormat, list: typescript.ts.NodeArray<T>, sourceFile: typescript.ts.SourceFile): String;
	/**
	Prints a source file as-is, without any emit transformations.
	**/
	function printFile(sourceFile: typescript.ts.SourceFile): String;
	/**
	Prints a bundle of source files as-is, without any emit transformations.
	**/
	function printBundle(bundle: typescript.ts.Bundle): String;
}

