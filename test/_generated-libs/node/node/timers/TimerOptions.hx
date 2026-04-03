package node.timers;

typedef TimerOptions = {
	/**
		Set to `false` to indicate that the scheduled `Timeout`
		should not require the Node.js event loop to remain active.
	**/
	@:optional
	var ref : Bool;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};