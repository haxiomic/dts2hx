package node.net;
extern interface TcpSocketConnectOpts {
	var port : Float;
	@:optional
	var host : Null<String>;
	@:optional
	var localAddress : Null<String>;
	@:optional
	var localPort : Null<Float>;
	@:optional
	var hints : Null<Float>;
	@:optional
	var family : Null<Float>;
	@:optional
	var lookup : Null<(hostname:String, options:node.dns.LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void) -> Void>;
}