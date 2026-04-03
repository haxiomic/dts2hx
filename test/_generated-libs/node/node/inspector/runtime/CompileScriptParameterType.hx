package node.inspector.runtime;

typedef CompileScriptParameterType = {
	/**
		Expression to compile.
	**/
	var expression : String;
	/**
		Source url to be set for the script.
	**/
	var sourceURL : String;
	/**
		Specifies whether the compiled script should be persisted.
	**/
	var persistScript : Bool;
	/**
		Specifies in which execution context to perform script run. If the parameter is omitted the evaluation will be performed in the context of the inspected page.
	**/
	@:optional
	var executionContextId : Float;
};