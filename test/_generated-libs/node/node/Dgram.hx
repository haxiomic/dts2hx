package node;
@:jsRequire("dgram") extern class Dgram {
	@:overload(function(options:node.dgram.SocketOptions, ?callback:(msg:global.Buffer, rinfo:node.dgram.RemoteInfo) -> Void):node.dgram.Socket { })
	static function createSocket(type:String, ?callback:(msg:global.Buffer, rinfo:node.dgram.RemoteInfo) -> Void):node.dgram.Socket;
}