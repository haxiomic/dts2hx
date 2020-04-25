package node.inspector.runtime;
extern interface RunScriptReturnType {
	/**
		Run result.
	**/
	var result : RemoteObject;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : Null<ExceptionDetails>;
}