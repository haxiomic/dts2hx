package node.net;
@:jsRequire("net", "Socket") extern class Socket extends node.stream.Duplex {
	function new(?options:SocketConstructorOpts);
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):Socket { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):Socket { })
	@:overload(function(path:String, ?connectionListener:() -> Void):Socket { })
	function connect(options:SocketConnectOpts, ?connectionListener:() -> Void):Socket;
	function setTimeout(timeout:Float, ?callback:() -> Void):Socket;
	function setNoDelay(?noDelay:Bool):Socket;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):Socket;
	function address():ts.AnyOf2<String, AddressInfo>;
	function unref():Void;
	function ref():Void;
	final bufferSize : Float;
	final bytesRead : Float;
	final bytesWritten : Float;
	final connecting : Bool;
	final destroyed : Bool;
	final localAddress : String;
	final localPort : Float;
	@:optional
	final remoteAddress : String;
	@:optional
	final remoteFamily : String;
	@:optional
	final remotePort : Float;
}