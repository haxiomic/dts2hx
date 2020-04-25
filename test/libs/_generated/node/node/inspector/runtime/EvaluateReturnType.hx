package node.inspector.runtime;
extern interface EvaluateReturnType {
	/**
		Evaluation result.
	**/
	var result : RemoteObject;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : Null<ExceptionDetails>;
}