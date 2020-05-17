package node.inspector.runtime;

typedef EvaluateReturnType = {
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