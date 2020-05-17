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
	dynamic function lookup(hostname:String, options:node.dns.LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void;
};