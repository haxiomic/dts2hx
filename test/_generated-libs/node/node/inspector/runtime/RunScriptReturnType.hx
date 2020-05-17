package node.inspector.runtime;

typedef RunScriptReturnType = {
	/**
		Run result.
	**/
	var result : RemoteObject;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : ExceptionDetails;
};