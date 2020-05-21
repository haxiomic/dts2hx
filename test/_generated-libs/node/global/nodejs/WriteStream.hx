package global.nodejs;

typedef WriteStream = {
	final writableHighWaterMark : Float;
	final writableLength : Float;
	@:optional
	var columns : Float;
	@:optional
	var rows : Float;
	function _write(chunk:Dynamic, encoding:String, callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void;
	function _destroy(err:Null<js.lib.Error>, callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void;
	function setDefaultEncoding(encoding:String):WriteStream;
	function cork():Void;
	function uncork():Void;
	function destroy(?error:js.lib.Error):Void;
	@:optional
	var isTTY : Bool;
	var readable : Bool;
	function read(?size:Float):ts.AnyOf2<String, global.Buffer>;
	function setEncoding(encoding:String):WriteStream;
	function pause():WriteStream;
	function resume():WriteStream;
	function isPaused():Bool;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function unpipe(?destination:WritableStream):WriteStream;
	@:overload(function(chunk:global.Buffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:ReadableStream):WriteStream;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):WriteStream;
	function setMaxListeners(n:Float):WriteStream;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool { })
	function write(buffer:ts.AnyOf3<String, global.Buffer, js.lib.Uint8Array>, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool;
	@:overload(function(data:ts.AnyOf3<String, global.Buffer, js.lib.Uint8Array>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
};