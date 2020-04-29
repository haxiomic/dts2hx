package node.fs;
@:jsRequire("fs", "WriteStream") extern class WriteStream {
	function close():Void;
	var bytesWritten : Float;
	var path : haxe.extern.EitherType<String, global.IBuffer>;
	/**
		events.EventEmitter
		   1. open
		   2. close
	**/
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):WriteStream;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:js.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.IError) -> Void):Void;
	function _destroy(error:Null<js.lib.IError>, callback:(?error:js.lib.IError) -> Void):Void;
	function _final(callback:(?error:js.lib.IError) -> Void):Void;
	@:overload(function(chunk:Any, ?encoding:String, ?cb:(error:Null<js.lib.IError>) -> Void):Bool { })
	function write(chunk:Any, ?cb:(error:Null<js.lib.IError>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):WriteStream;
	@:overload(function(chunk:Any, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Any, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	function destroy(?error:js.lib.IError):Void;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
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