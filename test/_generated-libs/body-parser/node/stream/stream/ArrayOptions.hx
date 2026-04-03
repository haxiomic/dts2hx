package node.stream.stream;

typedef ArrayOptions = {
	/**
		The maximum concurrent invocations of `fn` to call on the stream at once.
	**/
	@:optional
	var concurrency : Float;
	/**
		Allows destroying the stream if the signal is aborted.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};