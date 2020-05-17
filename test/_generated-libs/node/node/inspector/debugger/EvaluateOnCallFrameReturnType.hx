package node.inspector.debugger;

typedef EvaluateOnCallFrameReturnType = {
	/**
		Object wrapper for the evaluation result.
	**/
	var result : node.inspector.runtime.RemoteObject;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : node.inspector.runtime.ExceptionDetails;
};