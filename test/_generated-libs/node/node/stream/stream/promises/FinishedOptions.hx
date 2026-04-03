package node.stream.stream.promises;

typedef FinishedOptions = {
	/**
		If true, removes the listeners registered by this function before the promise is fulfilled.
	**/
	@:optional
	var cleanup : Bool;
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