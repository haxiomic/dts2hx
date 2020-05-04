package node.crypto;
typedef Signer = {
	@:overload(function(data:String, input_encoding:Utf8AsciiLatin1Encoding):Signer { })
	function update(data:ts.AnyOf12<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>):Signer;
	@:overload(function(private_key:ts.AnyOf4<String, global.IBuffer, KeyObject, SignPrivateKeyInput>, output_format:HexBase64Latin1Encoding):String { })
	function sign(private_key:ts.AnyOf4<String, global.IBuffer, KeyObject, SignPrivateKeyInput>):global.IBuffer;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:ts.AnyOf2<() -> Void, (err:ts.lib.IError) -> Void>):Bool { })
	function write(buffer:ts.AnyOf3<String, global.IBuffer, ts.lib.IUint8Array>, ?cb:ts.AnyOf2<() -> Void, (err:ts.lib.IError) -> Void>):Bool;
	@:overload(function(data:ts.AnyOf3<String, global.IBuffer, ts.lib.IUint8Array>, ?cb:() -> Void):Void { })
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
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.IFunction>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<ts.lib.IFunction>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Signer;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
};