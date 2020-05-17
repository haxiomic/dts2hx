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
		Maximum number of sockets to leave open in a free state. Only relevant if keepAlive is set to true. Default = 256.
	**/
	@:optional
	var maxFreeSockets : Float;
	/**
		Socket timeout in milliseconds. This will set the timeout after the socket is connected.
	**/
	@:optional
	var timeout : Float;
};