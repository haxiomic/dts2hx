package node.crypto;
extern typedef Signer = {
	@:overload(function(data:String, input_encoding:String):Signer { })
	function update(data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, js.lib.IDataView>>>>>>>>>>>):Signer;
	@:overload(function(private_key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<KeyObject, SignPrivateKeyInput>>>, output_format:String):String { })
	function sign(private_key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<KeyObject, SignPrivateKeyInput>>>):global.IBuffer;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:(?err:js.lib.IError) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?cb:(?err:js.lib.IError) -> Void):Bool;
	@:overload(function(data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function addListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):global.nodejs.EventEmitter;
	function on(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):global.nodejs.EventEmitter;
	function once(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):global.nodejs.EventEmitter;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):global.nodejs.EventEmitter;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):global.nodejs.EventEmitter;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):global.nodejs.EventEmitter;
	function setMaxListeners(n:Float):global.nodejs.EventEmitter;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
	function prependListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):global.nodejs.EventEmitter;
	function prependOnceListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):global.nodejs.EventEmitter;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
};