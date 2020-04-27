package node.net;
@:jsRequire("net", "Socket") extern class Socket extends node.stream.Duplex {
	function new(?options:SocketConstructorOpts);
	@:overload(function(str:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, js.lib.Uint8Array>>, ?encoding:String, ?cb:(?err:js.lib.Error) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, js.lib.Uint8Array>>, ?cb:(?err:js.lib.Error) -> Void):Bool;
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):Socket { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):Socket { })
	@:overload(function(path:String, ?connectionListener:() -> Void):Socket { })
	function connect(options:haxe.extern.EitherType<TcpSocketConnectOpts, IpcSocketConnectOpts>, ?connectionListener:() -> Void):Socket;
	function setEncoding(?encoding:String):Socket;
	function pause():Socket;
	function resume():Socket;
	function setTimeout(timeout:Float, ?callback:() -> Void):Socket;
	function setNoDelay(?noDelay:Bool):Socket;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):Socket;
	function address():haxe.extern.EitherType<String, AddressInfo>;
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
	@:overload(function(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, js.lib.Uint8Array>>, ?cb:() -> Void):Void { })
	@:overload(function(str:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, js.lib.Uint8Array>>, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	/**
		events.EventEmitter
		   1. close
		   2. connect
		   3. data
		   4. drain
		   5. end
		   6. error
		   7. lookup
		   8. timeout
	**/
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, had_error:Bool):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, data:global.Buffer):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, err:js.lib.Error, address:String, family:haxe.extern.EitherType<String, Float>, host:String):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
}