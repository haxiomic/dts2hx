package node.inspector.runtime;
extern interface CompileScriptReturnType {
	/**
		Id of the script.
	**/
	@:optional
	var scriptId : Null<String>;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : Null<ExceptionDetails>;
}