package node.inspector.runtime;
extern interface CompileScriptReturnType {
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
}