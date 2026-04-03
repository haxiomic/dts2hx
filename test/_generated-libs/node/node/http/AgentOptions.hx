package node.http;

typedef AgentOptions = {
	/**
		Keep sockets around in a pool to be used by other requests in the future. Default = false
	**/
	@:optional
	var keepAlive : Bool;
	/**
		When using HTTP KeepAlive, how often to send TCP KeepAlive packets over sockets being kept alive. Default = 1000.
		Only relevant if keepAlive is set to true.
	**/
	@:optional
	var keepAliveMsecs : Float;
	/**
		Maximum number of sockets to allow per host. Default for Node 0.10 is 5, default for Node 0.12 is Infinity
	**/
	@:optional
	var maxSockets : Float;
	/**
		Maximum number of sockets allowed for all hosts in total. Each request will use a new socket until the maximum is reached. Default: Infinity.
	**/
	@:optional
	var maxTotalSockets : Float;
	/**
		Maximum number of sockets to leave open in a free state. Only relevant if keepAlive is set to true. Default = 256.
	**/
	@:optional
	var maxFreeSockets : Float;
	/**
		Socket timeout in milliseconds. This will set the timeout after the socket is connected.
	**/
	@:optional
	var timeout : Float;
	/**
		Scheduling strategy to apply when picking the next free socket to use.
	**/
	@:optional
	var scheduling : String;
	@:optional
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
	var onread : node.net.OnReadOpts;
};