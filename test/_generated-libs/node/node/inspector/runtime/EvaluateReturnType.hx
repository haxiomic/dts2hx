package node.inspector.runtime;
extern typedef EvaluateReturnType = {
	/**
		Evaluation result.
	**/
	var result : RemoteObject;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : ExceptionDetails;
};