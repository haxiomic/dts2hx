package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2967:5
**/
@:native('ts.TransformationResult')
extern interface TransformationResult<T> {
	/**
	Gets the transformed source files.
	**/
	var transformed: Array<T>;
	/**
	Gets diagnostics for the transformation.
	**/
	@:optional
	var diagnostics: Array<typescript.ts.DiagnosticWithLocation>;
	/**
	Gets a substitute for a node, if one is available; otherwise, returns the original node.
	**/
	function substituteNode(hint: typescript.ts.EmitHint, node: typescript.ts.Node): typescript.ts.Node;
	/**
	Emits a node with possible notification.
	**/
	function emitNodeWithNotification(hint: typescript.ts.EmitHint, node: typescript.ts.Node, emitCallback: (hint: typescript.ts.EmitHint, node: typescript.ts.Node) -> Void): Void;
	/**
	Clean up EmitNode entries on any parse-tree nodes.
	**/
	function dispose(): Void;
}

