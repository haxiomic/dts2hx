package node.inspector.runtime;
extern typedef AwaitPromiseParameterType = { /**
		Identifier of the promise.
	**/
	var promiseObjectId : String; /**
		Whether the result is expected to be a JSON object that should be sent by value.
	**/
	@:optional
	var returnByValue : Bool; /**
		Whether preview should be generated for the result.
	**/
	@:optional
	var generatePreview : Bool; };