package node;

@:jsRequire("dgram") @valueModuleOnly extern class Dgram {
	@:overload(function(options:node.dgram.SocketOptions, ?callback:(msg:global.Buffer, rinfo:node.dgram.RemoteInfo) -> Void):node.dgram.Socket { })
	static function createSocket(type:node.dgram.SocketType, ?callback:(msg:global.Buffer, rinfo:node.dgram.RemoteInfo) -> Void):node.dgram.Socket;
}