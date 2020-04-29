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
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):WriteStream { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):WriteStream { })
	@:overload(function(path:String, ?connectionListener:() -> Void):WriteStream { })
	function connect(options:haxe.extern.EitherType<node.net.TcpSocketConnectOpts, node.net.IpcSocketConnectOpts>, ?connectionListener:() -> Void):WriteStream;
	function setEncoding(?encoding:String):WriteStream;
	function pause():WriteStream;
	function resume():WriteStream;
	function setTimeout(timeout:Float, ?callback:() -> Void):WriteStream;
	function setNoDelay(?noDelay:Bool):WriteStream;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):WriteStream;
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
	function setDefaultEncoding(encoding:String):WriteStream;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):WriteStream;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):WriteStream;
	function push(chunk:Any, ?encoding:String):Bool;
	function destroy(?error:js.lib.IError):Void;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):WriteStream { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):WriteStream { })
	function removeListener(event:String, listener:() -> Void):WriteStream;
	function pipe<T:(global.nodejs.WritableStream)>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):WriteStream;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):WriteStream;
	function setMaxListeners(n:Float):WriteStream;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}