package node.inspector.runtime;

typedef CallFunctionOnReturnType = {
	/**
		Call result.
	**/
	var result : RemoteObject;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : ExceptionDetails;
};