package node.crypto;

typedef Decipher = {
	@:overload(function(data:String, input_encoding:HexBase64BinaryEncoding):global.Buffer { })
	@:overload(function(data:Binary, input_encoding:Null<Any>, output_encoding:Utf8AsciiBinaryEncoding):String { })
	@:overload(function(data:String, input_encoding:Null<String>, output_encoding:Utf8AsciiBinaryEncoding):String { })
	function update(data:Binary):global.Buffer;
	@:native("final")
	@:overload(function(output_encoding:String):String { })
	function final_():global.Buffer;
	function setAutoPadding(?auto_padding:Bool):Decipher;
	var readable : Bool;
	function read(?size:Float):ts.AnyOf2<String, global.Buffer>;
	function setEncoding(encoding:String):Decipher;
	function pause():Decipher;
	function resume():Decipher;
	function isPaused():Bool;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function unpipe(?destination:global.nodejs.WritableStream):Decipher;
	@:overload(function(chunk:global.Buffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Decipher;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Decipher;
	function setMaxListeners(n:Float):Decipher;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Decipher;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>):Bool { })
	function write(buffer:ts.AnyOf3<String, global.Buffer, js.lib.Uint8Array>, ?cb:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>):Bool;
	@:overload(function(data:ts.AnyOf3<String, global.Buffer, js.lib.Uint8Array>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
};