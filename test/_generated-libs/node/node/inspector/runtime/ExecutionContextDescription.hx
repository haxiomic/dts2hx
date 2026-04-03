package node.inspector.runtime;

/**
	Description of an isolated world.
**/
typedef ExecutionContextDescription = {
	/**
		Unique id of the execution context. It can be used to specify in which execution context script evaluation should be performed.
	**/
	var id : Float;
	/**
		Execution context origin.
	**/
	var origin : String;
	/**
		Human readable name describing given context.
	**/
	var name : String;
	/**
		Embedder-specific auxiliary data.
	**/
	@:optional
	var auxData : { };
};