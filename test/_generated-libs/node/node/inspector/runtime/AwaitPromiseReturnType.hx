package node.inspector.runtime;

typedef AwaitPromiseReturnType = {
	/**
		Promise result. Will contain rejected value if promise was rejected.
	**/
	var result : RemoteObject;
	/**
		Exception details if stack strace is available.
	**/
	@:optional
	var exceptionDetails : ExceptionDetails;
};