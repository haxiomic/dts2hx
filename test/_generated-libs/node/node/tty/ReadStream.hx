package node.tty;
@:jsRequire("tty", "ReadStream") extern class ReadStream {
	var isRaw : Bool;
	function setRawMode(mode:Bool):Void;
	var isTTY : Bool;
	@:overload(function(str:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?encoding:String, ?cb:(?err:js.lib.IError) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?cb:(?err:js.lib.IError) -> Void):Bool;
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):ReadStream { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):ReadStream { })
	@:overload(function(path:String, ?connectionListener:() -> Void):ReadStream { })
	function connect(options:haxe.extern.EitherType<node.net.TcpSocketConnectOpts, node.net.IpcSocketConnectOpts>, ?connectionListener:() -> Void):ReadStream;
	function setEncoding(?encoding:String):ReadStream;
	function pause():ReadStream;
	function resume():ReadStream;
	function setTimeout(timeout:Float, ?callback:() -> Void):ReadStream;
	function setNoDelay(?noDelay:Bool):ReadStream;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):ReadStream;
	function address():haxe.extern.EitherType<String, node.net.AddressInfo>;
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
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, had_error:Bool):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, data:global.IBuffer):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:String, err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.IBuffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError, address:String, family:haxe.extern.EitherType<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:js.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.IError) -> Void):Void;
	function _destroy(error:Null<js.lib.IError>, callback:(error:Null<js.lib.IError>) -> Void):Void;
	function _final(callback:(?error:js.lib.IError) -> Void):Void;
	function setDefaultEncoding(encoding:String):ReadStream;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):ReadStream;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):ReadStream;
	function push(chunk:Any, ?encoding:String):Bool;
	function destroy(?error:js.lib.IError):Void;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):ReadStream { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):ReadStream { })
	function removeListener(event:String, listener:() -> Void):ReadStream;
	function pipe<T:(global.nodejs.WritableStream)>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):ReadStream;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):ReadStream;
	function setMaxListeners(n:Float):ReadStream;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}