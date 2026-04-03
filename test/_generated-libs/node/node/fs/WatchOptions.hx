package node.fs;

typedef WatchOptions = {
	@:optional
	var encoding : String;
	@:optional
	var persistent : Bool;
	@:optional
	var recursive : Bool;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};