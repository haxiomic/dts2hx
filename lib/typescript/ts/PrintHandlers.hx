package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:3034:5
**/

typedef PrintHandlers = {
	/**
	A hook used by the Printer when generating unique names to avoid collisions with
	globally defined names that exist outside of the current source file.
	**/
	@:optional
	function hasGlobalName(name: String): Bool;
	/**
	A hook used by the Printer to provide notifications prior to emitting a node. A
	compatible implementation **must** invoke `emitCallback` with the provided `hint` and
	`node` values.
	**/
	@:optional
	function onEmitNode(hint: typescript.ts.EmitHint, node: Null<typescript.ts.Node>, emitCallback: (hint: typescript.ts.EmitHint, node: Null<typescript.ts.Node>) -> Void): Void;
	/**
	A hook used by the Printer to perform just-in-time substitution of a node. This is
	primarily used by node transformations that need to substitute one node for another,
	such as replacing `myExportedVar` with `exports.myExportedVar`.
	**/
	@:optional
	function substituteNode(hint: typescript.ts.EmitHint, node: typescript.ts.Node): typescript.ts.Node;
}

