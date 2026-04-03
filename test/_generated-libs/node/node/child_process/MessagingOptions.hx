package node.child_process;

typedef MessagingOptions = {
	/**
		Specify the kind of serialization used for sending messages between processes.
	**/
	@:optional
	var serialization : SerializationType;
	/**
		The signal value to be used when the spawned process will be killed by the abort signal.
	**/
	@:optional
	var killSignal : ts.AnyOf2<Float, String>;
	/**
		In milliseconds the maximum amount of time the process is allowed to run.
	**/
	@:optional
	var timeout : Float;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};