package node.stream;
@:jsRequire("stream", "Duplex") extern class Duplex {
	function new(?opts:DuplexOptions);
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:ts.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:ts.lib.IError) -> Void):Void;
	function _destroy(error:Null<ts.lib.IError>, callback:(error:Null<ts.lib.IError>) -> Void):Void;
	function _final(callback:(?error:ts.lib.IError) -> Void):Void;
	@:overload(function(chunk:Any, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool { })
	function write(chunk:Any, ?encoding:String, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool;
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
	function setEncoding(encoding:String):Duplex;
	function pause():Duplex;
	function resume():Duplex;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):Duplex;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Duplex;
	function push(chunk:Any, ?encoding:String):Bool;
	function destroy(?error:ts.lib.IError):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Duplex { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Duplex { })
	function addListener(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, chunk:Any):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.IError):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Duplex { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Duplex { })
	function on(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Duplex { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Duplex { })
	function once(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Duplex { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Duplex { })
	function prependListener(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Duplex { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Duplex { })
	function prependOnceListener(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Duplex { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Duplex { })
	function removeListener(event:String, listener:() -> Void):Duplex;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Duplex;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Duplex;
	function setMaxListeners(n:Float):Duplex;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}