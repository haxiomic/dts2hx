package node.stream;
@:jsRequire("stream", "Writable") extern class Writable {
	function new(?opts:WritableOptions);
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
	function setDefaultEncoding(encoding:String):Writable;
	@:overload(function(chunk:Any, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Any, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	function destroy(?error:js.lib.IError):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. drain
		3. error
		4. finish
		5. pipe
		6. unpipe
	**/
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Writable { })
	function addListener(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, src:Readable):Bool { })
	@:overload(function(event:String, src:Readable):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Writable { })
	function on(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Writable { })
	function once(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Writable { })
	function prependListener(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Writable { })
	function prependOnceListener(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Writable { })
	function removeListener(event:String, listener:() -> Void):Writable;
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