package node.tty;
@:jsRequire("tty", "WriteStream") extern class WriteStream {
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
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	function clearLine(dir:Int):Void;
	function clearScreenDown():Void;
	function cursorTo(x:Float, y:Float):Void;
	function getColorDepth(?env:{ }):Float;
	function getWindowSize():js.lib.Tuple2<Float, Float>;
	var columns : Float;
	var rows : Float;
	var isTTY : Bool;
	@:overload(function(str:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?encoding:String, ?cb:(?err:js.lib.IError) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?cb:(?err:js.lib.IError) -> Void):Bool;
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):node.net.Socket { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):node.net.Socket { })
	@:overload(function(path:String, ?connectionListener:() -> Void):node.net.Socket { })
	function connect(options:haxe.extern.EitherType<node.net.TcpSocketConnectOpts, node.net.IpcSocketConnectOpts>, ?connectionListener:() -> Void):node.net.Socket;
	function setEncoding(?encoding:String):node.net.Socket;
	function pause():node.net.Socket;
	function resume():node.net.Socket;
	function setTimeout(timeout:Float, ?callback:() -> Void):node.net.Socket;
	function setNoDelay(?noDelay:Bool):node.net.Socket;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):node.net.Socket;
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
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:js.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.IError) -> Void):Void;
	function _destroy(error:Null<js.lib.IError>, callback:(error:Null<js.lib.IError>) -> Void):Void;
	function _final(callback:(?error:js.lib.IError) -> Void):Void;
	function setDefaultEncoding(encoding:String):node.stream.Duplex;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):node.stream.Readable;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):node.stream.Readable;
	function push(chunk:Any, ?encoding:String):Bool;
	function destroy(?error:js.lib.IError):Void;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:() -> Void):node.stream.Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):node.stream.Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.stream.Readable { })
	function removeListener(event:String, listener:() -> Void):node.stream.Readable;
	function pipe<T:(global.nodejs.WritableStream)>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):node.events.EventEmitter;
	function setMaxListeners(n:Float):node.events.EventEmitter;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}