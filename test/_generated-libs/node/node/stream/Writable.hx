package node.stream;

@:jsRequire("stream", "Writable") extern class Writable extends Stream {
	function new(?opts:WritableOptions);
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Dynamic, encoding:String, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : String; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _destroy(error:Null<js.lib.Error>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:overload(function(chunk:Dynamic, ?encoding:String, ?cb:(error:Null<js.lib.Error>) -> Void):Bool { })
	function write(chunk:Dynamic, ?cb:(error:Null<js.lib.Error>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):Writable;
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Dynamic, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	function destroy(?error:js.lib.Error):Void;
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
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function addListener(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, src:Readable):Bool { })
	@:overload(function(event:String, src:Readable):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function on(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function once(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function prependListener(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function prependOnceListener(event:String, listener:() -> Void):Writable;
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Writable { })
	@:overload(function(event:String, listener:() -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:String, listener:(src:Readable) -> Void):Writable { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable { })
	function removeListener(event:String, listener:() -> Void):Writable;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Writable;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Writable;
	function setMaxListeners(n:Float):Writable;
	static var prototype : Writable;
}