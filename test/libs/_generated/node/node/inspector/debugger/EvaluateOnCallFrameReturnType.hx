package node.inspector.debugger;
extern interface EvaluateOnCallFrameReturnType {
	/**
		Object wrapper for the evaluation result.
	**/
	var result : node.inspector.runtime.RemoteObject;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : Null<node.inspector.runtime.ExceptionDetails>;
}