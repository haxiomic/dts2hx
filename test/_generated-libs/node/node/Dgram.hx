package node;
@:jsRequire("dgram") @valueModuleOnly extern class Dgram {
	@:overload(function(options:node.dgram.SocketOptions, ?callback:(msg:global.IBuffer, rinfo:node.dgram.RemoteInfo) -> Void):node.dgram.Socket { })
	static function createSocket(type:String, ?callback:(msg:global.IBuffer, rinfo:node.dgram.RemoteInfo) -> Void):node.dgram.Socket;
}