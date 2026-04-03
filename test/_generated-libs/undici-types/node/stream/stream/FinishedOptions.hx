package node.stream.stream;

typedef FinishedOptions = {
	@:optional
	var error : Bool;
	@:optional
	var readable : Bool;
	@:optional
	var writable : Bool;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};