package node.net;

typedef ListenOptions = {
	@:optional
	var port : Float;
	@:optional
	var host : String;
	@:optional
	var backlog : Float;
	@:optional
	var path : String;
	@:optional
	var exclusive : Bool;
	@:optional
	var readableAll : Bool;
	@:optional
	var writableAll : Bool;
	@:optional
	var ipv6Only : Bool;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};