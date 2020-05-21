package node.crypto;

typedef Hash = {
	@:overload(function(data:String, input_encoding:Utf8AsciiLatin1Encoding):Hash { })
	function update(data:ts.AnyOf12<String, global.Buffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):Hash;
	@:overload(function(encoding:HexBase64Latin1Encoding):String { })
	function digest():global.Buffer;
	var readable : Bool;
	function read(?size:Float):ts.AnyOf2<String, global.Buffer>;
	function setEncoding(encoding:String):Hash;
	function pause():Hash;
	function resume():Hash;
	function isPaused():Bool;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function unpipe(?destination:global.nodejs.WritableStream):Hash;
	@:overload(function(chunk:global.Buffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Hash;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Hash;
	function setMaxListeners(n:Float):Hash;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Hash;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool { })
	function write(buffer:ts.AnyOf3<String, global.Buffer, js.lib.Uint8Array>, ?cb:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Bool;
	@:overload(function(data:ts.AnyOf3<String, global.Buffer, js.lib.Uint8Array>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
};