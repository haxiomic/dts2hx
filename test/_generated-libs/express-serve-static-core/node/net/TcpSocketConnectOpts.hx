package node.net;

typedef TcpSocketConnectOpts = {
	var port : Float;
	@:optional
	var host : String;
	@:optional
	var localAddress : String;
	@:optional
	var localPort : Float;
	@:optional
	var hints : Float;
	@:optional
	var family : Float;
	@:optional
	dynamic function lookup(hostname:String, options:node.dns.LookupOptions, callback:ts.AnyOf2<(err:Null<global.nodejs.ErrnoException>, address:ts.AnyOf2<String, Array<node.dns.LookupAddress>>) -> Void, (err:Null<global.nodejs.ErrnoException>, address:ts.AnyOf2<String, Array<node.dns.LookupAddress>>, family:Float) -> Void>):Void;
	@:optional
	var noDelay : Bool;
	@:optional
	var keepAlive : Bool;
	@:optional
	var keepAliveInitialDelay : Float;
	@:optional
	var autoSelectFamily : Bool;
	@:optional
	var autoSelectFamilyAttemptTimeout : Float;
	/**
		If specified, incoming data is stored in a single buffer and passed to the supplied callback when data arrives on the socket.
		Note: this will cause the streaming functionality to not provide any data, however events like 'error', 'end', and 'close' will
		still be emitted as normal and methods like pause() and resume() will also behave as expected.
	**/
	@:optional
	var onread : OnReadOpts;
};