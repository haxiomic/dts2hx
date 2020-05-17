package node.net;

typedef TcpNetConnectOpts = {
	@:optional
	var timeout : Float;
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
	@:optional
	var fd : Float;
	@:optional
	var allowHalfOpen : Bool;
	@:optional
	var readable : Bool;
	@:optional
	var writable : Bool;
};