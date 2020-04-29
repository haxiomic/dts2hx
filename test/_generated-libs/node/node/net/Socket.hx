package node.net;
@:jsRequire("net", "Socket") extern class Socket {
	function new(?options:SocketConstructorOpts);
	@:overload(function(str:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?encoding:String, ?cb:(?err:js.lib.IError) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?cb:(?err:js.lib.IError) -> Void):Bool;
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
	@:overload(function(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?cb:() -> Void):Void { })
	@:overload(function(str:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?encoding:String, ?cb:() -> Void):Void { })
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
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, had_error:Bool):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, data:global.IBuffer):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:String, err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:js.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.IError) -> Void):Void;
	function _destroy(error:Null<js.lib.IError>, callback:(error:Null<js.lib.IError>) -> Void):Void;
	function _final(callback:(?error:js.lib.IError) -> Void):Void;
	function setDefaultEncoding(encoding:String):Socket;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):Socket;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Socket;
	function push(chunk:Any, ?encoding:String):Bool;
	function destroy(?error:js.lib.IError):Void;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Socket { })
	function removeListener(event:String, listener:() -> Void):Socket;
	function pipe<T:(global.nodejs.WritableStream)>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Socket;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Socket;
	function setMaxListeners(n:Float):Socket;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}