package node.inspector.runtime;

typedef EvaluateParameterType = {
	/**
		Expression to evaluate.
	**/
	var expression : String;
	/**
		Symbolic group name that can be used to release multiple objects.
	**/
	@:optional
	var objectGroup : String;
	/**
		Determines whether Command Line API should be available during the evaluation.
	**/
	@:optional
	var includeCommandLineAPI : Bool;
	/**
		In silent mode exceptions thrown during evaluation are not reported and do not pause execution. Overrides <code>setPauseOnException</code> state.
	**/
	@:optional
	var silent : Bool;
	/**
		Specifies in which execution context to perform evaluation. If the parameter is omitted the evaluation will be performed in the context of the inspected page.
	**/
	@:optional
	var contextId : Float;
	/**
		Whether the result is expected to be a JSON object that should be sent by value.
	**/
	@:optional
	var returnByValue : Bool;
	/**
		Whether preview should be generated for the result.
	**/
	@:optional
	var generatePreview : Bool;
	/**
		Whether execution should be treated as initiated by user in the UI.
	**/
	@:optional
	var userGesture : Bool;
	/**
		Whether execution should <code>await</code> for resulting value and return once awaited promise is resolved.
	**/
	@:optional
	var awaitPromise : Bool;
};