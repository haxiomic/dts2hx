package node.net;

typedef ServerOpts = {
	/**
		Indicates whether half-opened TCP connections are allowed.
	**/
	@:optional
	var allowHalfOpen : Bool;
	/**
		Indicates whether the socket should be paused on incoming connections.
	**/
	@:optional
	var pauseOnConnect : Bool;
	/**
		If set to `true`, it disables the use of Nagle's algorithm immediately after a new incoming connection is received.
	**/
	@:optional
	var noDelay : Bool;
	/**
		If set to `true`, it enables keep-alive functionality on the socket immediately after a new incoming connection is received,
		similarly on what is done in `socket.setKeepAlive([enable][, initialDelay])`.
	**/
	@:optional
	var keepAlive : Bool;
	/**
		If set to a positive number, it sets the initial delay before the first keepalive probe is sent on an idle socket.
	**/
	@:optional
	var keepAliveInitialDelay : Float;
	/**
		Optionally overrides all `net.Socket`s' `readableHighWaterMark` and `writableHighWaterMark`.
	**/
	@:optional
	var highWaterMark : Float;
};