package node.stream;
@:jsRequire("stream", "Transform") extern class Transform {
	function new(?opts:TransformOptions);
	function _transform(chunk:Any, encoding:String, callback:(?error:js.lib.IError, ?data:Any) -> Void):Void;
	function _flush(callback:(?error:js.lib.IError, ?data:Any) -> Void):Void;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:js.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.IError) -> Void):Void;
	function _destroy(error:Null<js.lib.IError>, callback:(error:Null<js.lib.IError>) -> Void):Void;
	function _final(callback:(?error:js.lib.IError) -> Void):Void;
	@:overload(function(chunk:Any, ?cb:(error:Null<js.lib.IError>) -> Void):Bool { })
	function write(chunk:Any, ?encoding:String, ?cb:(error:Null<js.lib.IError>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):Duplex;
	@:overload(function(chunk:Any, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Any, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function setEncoding(encoding:String):Readable;
	function pause():Readable;
	function resume():Readable;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):Readable;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Readable;
	function push(chunk:Any, ?encoding:String):Bool;
	function destroy(?error:js.lib.IError):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Readable { })
	function addListener(event:String, listener:() -> Void):Readable;
	@:overload(function(event:String, chunk:Any):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Readable { })
	function on(event:String, listener:() -> Void):Readable;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Readable { })
	function once(event:String, listener:() -> Void):Readable;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Readable { })
	function prependListener(event:String, listener:() -> Void):Readable;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Readable { })
	function prependOnceListener(event:String, listener:() -> Void):Readable;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:() -> Void):Readable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Readable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Readable { })
	function removeListener(event:String, listener:() -> Void):Readable;
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