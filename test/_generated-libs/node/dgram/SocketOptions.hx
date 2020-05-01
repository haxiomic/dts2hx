package node.dgram;
typedef SocketOptions = {
	var type : String;
	@:optional
	var reuseAddr : Bool;
	@:optional
	var ipv6Only : Bool;
	@:optional
	var recvBufferSize : Float;
	@:optional
	var sendBufferSize : Float;
	@:optional
	var lookup : (hostname:String, options:node.dns.LookupOneOptions, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void) -> Void;
};