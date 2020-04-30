package node.crypto;
extern typedef DecipherGCM = {
	function setAuthTag(buffer:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>):DecipherGCM;
	function setAAD(buffer:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>, ?options:{ var plaintextLength : Float; }):DecipherGCM;
	@:overload(function(data:String, input_encoding:String):global.IBuffer { })
	@:overload(function(data:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>, input_encoding:Null<Any>, output_encoding:String):String { })
	@:overload(function(data:String, input_encoding:Null<String>, output_encoding:String):String { })
	function update(data:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>):global.IBuffer;
	@:native("final")
	@:overload(function(output_encoding:String):String { })
	function final_():global.IBuffer;
	function setAutoPadding(?auto_padding:Bool):DecipherGCM;
	var readable : Bool;
	function read(?size:Float):haxe.extern.EitherType<String, global.IBuffer>;
	function setEncoding(encoding:String):DecipherGCM;
	function pause():DecipherGCM;
	function resume():DecipherGCM;
	function isPaused():Bool;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function unpipe(?destination:global.nodejs.WritableStream):DecipherGCM;
	@:overload(function(chunk:global.IBuffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):DecipherGCM;
	function addListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):DecipherGCM;
	function on(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):DecipherGCM;
	function once(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):DecipherGCM;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):DecipherGCM;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):DecipherGCM;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):DecipherGCM;
	function setMaxListeners(n:Float):DecipherGCM;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:haxe.extern.Rest<Any>):Bool;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
	function prependListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):DecipherGCM;
	function prependOnceListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):DecipherGCM;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:(?err:ts.lib.IError) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, ts.lib.IUint8Array>>, ?cb:(?err:ts.lib.IError) -> Void):Bool;
	@:overload(function(data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, ts.lib.IUint8Array>>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
};