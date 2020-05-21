package node.stream;

@:jsRequire("stream", "Duplex") extern class Duplex extends Readable {
	function new(?opts:DuplexOptions);
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Dynamic, encoding:String, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : String; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	function _destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:overload(function(chunk:Dynamic, ?cb:(error:Null<js.lib.Error>) -> Void):Bool { })
	function write(chunk:Dynamic, ?encoding:String, ?cb:(error:Null<js.lib.Error>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):Duplex;
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Dynamic, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	function setEncoding(encoding:String):Duplex;
	function pause():Duplex;
	function resume():Duplex;
	function unpipe(?destination:global.nodejs.WritableStream):Duplex;
	function wrap(oldStream:global.nodejs.ReadableStream):Duplex;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function addListener(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function on(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function once(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function prependListener(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function prependOnceListener(event:String, listener:() -> Void):Duplex;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:() -> Void):Duplex { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Duplex { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex { })
	function removeListener(event:String, listener:() -> Void):Duplex;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Duplex;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Duplex;
	function setMaxListeners(n:Float):Duplex;
	static var prototype : Duplex;
}