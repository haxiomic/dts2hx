package node.inspector.runtime;

/**
	Detailed information about exception (or error) that was thrown during script compilation or execution.
**/
typedef ExceptionDetails = {
	/**
		Exception id.
	**/
	var exceptionId : Float;
	/**
		Exception text, which should be used together with exception object when available.
	**/
	var text : String;
	/**
		Line number of the exception location (0-based).
	**/
	var lineNumber : Float;
	/**
		Column number of the exception location (0-based).
	**/
	var columnNumber : Float;
	/**
		Script ID of the exception location.
	**/
	@:optional
	var scriptId : String;
	/**
		URL of the exception location, to be used when the script was not reported.
	**/
	@:optional
	var url : String;
	/**
		JavaScript stack trace if available.
	**/
	@:optional
	var stackTrace : StackTrace;
	/**
		Exception object if available.
	**/
	@:optional
	var exception : RemoteObject;
	/**
		Identifier of the context where exception happened.
	**/
	@:optional
	var executionContextId : Float;
};