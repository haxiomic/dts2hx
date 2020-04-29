package node.fs;
@:jsRequire("fs", "ReadStream") extern class ReadStream {
	function close():Void;
	var bytesRead : Float;
	var path : haxe.extern.EitherType<String, global.IBuffer>;
	/**
		events.EventEmitter
		   1. open
		   2. close
	**/
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):ReadStream;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function setEncoding(encoding:String):ReadStream;
	function pause():ReadStream;
	function resume():ReadStream;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):ReadStream;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):ReadStream;
	function push(chunk:Any, ?encoding:String):Bool;
	function _destroy(error:Null<js.lib.IError>, callback:(?error:js.lib.IError) -> Void):Void;
	function destroy(?error:js.lib.IError):Void;
	@:overload(function(event:String, chunk:Any):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
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