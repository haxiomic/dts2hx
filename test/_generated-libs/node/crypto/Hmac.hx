package node.crypto;
extern typedef Hmac = {
	@:overload(function(data:String, input_encoding:String):Hmac { })
	function update(data:ts.AnyOf12<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>):Hmac;
	@:overload(function(encoding:String):String { })
	function digest():global.IBuffer;
	var readable : Bool;
	function read(?size:Float):ts.AnyOf2<String, global.IBuffer>;
	function setEncoding(encoding:String):Hmac;
	function pause():Hmac;
	function resume():Hmac;
	function isPaused():Bool;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function unpipe(?destination:global.nodejs.WritableStream):Hmac;
	@:overload(function(chunk:global.IBuffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Hmac;
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Hmac;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Hmac;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Hmac;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Hmac;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Hmac;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Hmac;
	function setMaxListeners(n:Float):Hmac;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Any>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Hmac;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Hmac;
	function eventNames():std.Array<ts.AnyOf2<String, js.lib.Symbol>>;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:(?err:ts.lib.IError) -> Void):Bool { })
	function write(buffer:ts.AnyOf3<String, global.IBuffer, ts.lib.IUint8Array>, ?cb:(?err:ts.lib.IError) -> Void):Bool;
	@:overload(function(data:ts.AnyOf3<String, global.IBuffer, ts.lib.IUint8Array>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
};