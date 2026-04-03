package node.net;

typedef IpcNetConnectOpts = {
	@:optional
	var timeout : Float;
	var path : String;
	/**
		If specified, incoming data is stored in a single buffer and passed to the supplied callback when data arrives on the socket.
		Note: this will cause the streaming functionality to not provide any data, however events like 'error', 'end', and 'close' will
		still be emitted as normal and methods like pause() and resume() will also behave as expected.
	**/
	@:optional
	var onread : OnReadOpts;
	@:optional
	var fd : Float;
	@:optional
	var allowHalfOpen : Bool;
	@:optional
	var readable : Bool;
	@:optional
	var writable : Bool;
	@:optional
	var signal : js.html.AbortSignal;
};