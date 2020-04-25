package node.inspector.runtime;
extern interface CallFunctionOnReturnType {
	/**
		Call result.
	**/
	var result : RemoteObject;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : Null<ExceptionDetails>;
}