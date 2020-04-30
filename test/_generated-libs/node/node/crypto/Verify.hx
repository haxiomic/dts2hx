package node.crypto;
extern typedef Verify = {
	@:overload(function(data:String, input_encoding:String):Verify { })
	function update(data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>>):Verify;
	@:overload(function(object:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.lib.IObject, haxe.extern.EitherType<global.IBuffer, KeyObject>>>, signature:String, signature_format:String):Bool { })
	function verify(object:haxe.extern.EitherType<String, haxe.extern.EitherType<ts.lib.IObject, haxe.extern.EitherType<global.IBuffer, KeyObject>>>, signature:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>):Bool;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:(?err:ts.lib.IError) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, ts.lib.IUint8Array>>, ?cb:(?err:ts.lib.IError) -> Void):Bool;
	@:overload(function(data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, ts.lib.IUint8Array>>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function addListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Verify;
	function on(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Verify;
	function once(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Verify;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Verify;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Verify;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Verify;
	function setMaxListeners(n:Float):Verify;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
	function prependListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Verify;
	function prependOnceListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Verify;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
};