package node.inspector.runtime;

typedef CallFunctionOnParameterType = {
	/**
		Declaration of the function to call.
	**/
	var functionDeclaration : String;
	/**
		Identifier of the object to call function on. Either objectId or executionContextId should be specified.
	**/
	@:optional
	var objectId : String;
	/**
		Call arguments. All call arguments must belong to the same JavaScript world as the target object.
	**/
	@:optional
	var arguments : Array<CallArgument>;
	/**
		In silent mode exceptions thrown during evaluation are not reported and do not pause execution. Overrides <code>setPauseOnException</code> state.
	**/
	@:optional
	var silent : Bool;
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
		Whether execution should be treated as initiated by user in the UI.
	**/
	@:optional
	var userGesture : Bool;
	/**
		Whether execution should <code>await</code> for resulting value and return once awaited promise is resolved.
	**/
	@:optional
	var awaitPromise : Bool;
	/**
		Specifies execution context which global object will be used to call function on. Either executionContextId or objectId should be specified.
	**/
	@:optional
	var executionContextId : Float;
	/**
		Symbolic group name that can be used to release multiple objects. If objectGroup is not specified and objectId is, objectGroup will be inherited from object.
	**/
	@:optional
	var objectGroup : String;
};