package node.dgram;
extern interface SocketOptions {
	var type : String;
	@:optional
	var reuseAddr : Null<Bool>;
	@:optional
	var ipv6Only : Null<Bool>;
	@:optional
	var recvBufferSize : Null<Float>;
	@:optional
	var sendBufferSize : Null<Float>;
	@:optional
	var lookup : Null<(hostname:String, options:node.dns.LookupOneOptions, callback:(err:global.nodejs.ErrnoException, address:String, family:Float) -> Void) -> Void>;
}