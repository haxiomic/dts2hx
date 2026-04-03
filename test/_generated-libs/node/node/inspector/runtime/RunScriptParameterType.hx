package node.inspector.runtime;

typedef RunScriptParameterType = {
	/**
		Id of the script to run.
	**/
	var scriptId : String;
	/**
		Specifies in which execution context to perform script run. If the parameter is omitted the evaluation will be performed in the context of the inspected page.
	**/
	@:optional
	var executionContextId : Float;
	/**
		Symbolic group name that can be used to release multiple objects.
	**/
	@:optional
	var objectGroup : String;
	/**
		In silent mode exceptions thrown during evaluation are not reported and do not pause execution. Overrides <code>setPauseOnException</code> state.
	**/
	@:optional
	var silent : Bool;
	/**
		Determines whether Command Line API should be available during the evaluation.
	**/
	@:optional
	var includeCommandLineAPI : Bool;
	/**
		Whether the result is expected to be a JSON object which should be sent by value.
	**/
	@:optional
	var returnByValue : Bool;
	/**
		Whether preview should be generated for the result.
	**/
	@:optional
	var generatePreview : Bool;
	/**
		Whether execution should <code>await</code> for resulting value and return once awaited promise is resolved.
	**/
	@:optional
	var awaitPromise : Bool;
};