package global.nodejs;

typedef ReadableStream = {
	var readable : Bool;
	function read(?size:Float):ts.AnyOf2<String, global.Buffer>;
	function setEncoding(encoding:String):ReadableStream;
	function pause():ReadableStream;
	function resume():ReadableStream;
	function isPaused():Bool;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function unpipe(?destination:WritableStream):ReadableStream;
	@:overload(function(chunk:global.Buffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:ReadableStream):ReadableStream;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadableStream;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadableStream;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadableStream;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadableStream;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadableStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ReadableStream;
	function setMaxListeners(n:Float):ReadableStream;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadableStream;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadableStream;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};