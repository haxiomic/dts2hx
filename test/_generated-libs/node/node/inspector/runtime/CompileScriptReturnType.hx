package node.inspector.runtime;

typedef CompileScriptReturnType = {
	/**
		Id of the script.
	**/
	@:optional
	var scriptId : String;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : ExceptionDetails;
};