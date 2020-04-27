package node.inspector.debugger;
extern interface EvaluateOnCallFrameParameterType {
	/**
		Call frame identifier to evaluate on.
	**/
	var callFrameId : String;
	/**
		Expression to evaluate.
	**/
	var expression : String;
	/**
		String object group name to put result into (allows rapid releasing resulting object handles
		using `releaseObjectGroup`).
	**/
	@:optional
	var objectGroup : String;
	/**
		Specifies whether command line API should be available to the evaluated expression, defaults
		to false.
	**/
	@:optional
	var includeCommandLineAPI : Bool;
	/**
		In silent mode exceptions thrown during evaluation are not reported and do not pause
		execution. Overrides `setPauseOnException` state.
	**/
	@:optional
	var silent : Bool;
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
		Whether to throw an exception if side effect cannot be ruled out during evaluation.
	**/
	@:optional
	var throwOnSideEffect : Bool;
	/**
		Terminate execution after timing out (number of milliseconds).
	**/
	@:optional
	var timeout : Float;
}