package node.crypto;

typedef Signer = {
	@:overload(function(data:String, input_encoding:Utf8AsciiLatin1Encoding):Signer { })
	function update(data:ts.AnyOf12<String, global.Buffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):Signer;
	@:overload(function(private_key:ts.AnyOf4<String, global.Buffer, KeyObject, SignPrivateKeyInput>, output_format:HexBase64Latin1Encoding):String { })
	function sign(private_key:ts.AnyOf4<String, global.Buffer, KeyObject, SignPrivateKeyInput>):global.Buffer;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>):Bool { })
	function write(buffer:ts.AnyOf3<String, global.Buffer, js.lib.Uint8Array>, ?cb:ts.AnyOf2<() -> Void, (err:ts.lib.Error) -> Void>):Bool;
	@:overload(function(data:ts.AnyOf3<String, global.Buffer, js.lib.Uint8Array>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Signer;
	function setMaxListeners(n:Float):Signer;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};