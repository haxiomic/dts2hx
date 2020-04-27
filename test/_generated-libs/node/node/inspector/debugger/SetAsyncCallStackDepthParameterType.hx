package node.inspector.debugger;
extern interface SetAsyncCallStackDepthParameterType {
	/**
		Maximum depth of async call stacks. Setting to `0` will effectively disable collecting async
		call stacks (default).
	**/
	var maxDepth : Float;
}