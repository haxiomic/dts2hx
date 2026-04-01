package global.nodejs;

typedef WritableStream = {
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool { })
	function write(buffer:ts.AnyOf3<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer>, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool;
	@:overload(function(data:ts.AnyOf3<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WritableStream;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WritableStream;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WritableStream;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WritableStream;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WritableStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):WritableStream;
	function setMaxListeners(n:Float):WritableStream;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WritableStream;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WritableStream;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};