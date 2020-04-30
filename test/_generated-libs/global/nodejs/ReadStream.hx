package global.nodejs;
extern typedef ReadStream = {
	final readableHighWaterMark : Float;
	final readableLength : Float;
	@:optional
	var isRaw : Bool;
	@:optional
	function setRawMode(mode:Bool):Void;
	function _read(size:Float):Void;
	function _destroy(err:Null<ts.lib.IError>, callback:(?err:ts.lib.IError) -> Void):Void;
	function push(chunk:Any, ?encoding:String):Bool;
	function destroy(?error:ts.lib.IError):Void;
	@:optional
	var isTTY : Bool;
	var readable : Bool;
	function read(?size:Float):haxe.extern.EitherType<String, global.IBuffer>;
	function setEncoding(encoding:String):ReadStream;
	function pause():ReadStream;
	function resume():ReadStream;
	function isPaused():Bool;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function unpipe(?destination:WritableStream):ReadStream;
	@:overload(function(chunk:global.IBuffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:ReadableStream):ReadStream;
	function addListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):ReadStream;
	function on(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):ReadStream;
	function once(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):ReadStream;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):ReadStream;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):ReadStream;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):ReadStream;
	function setMaxListeners(n:Float):ReadStream;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:haxe.extern.Rest<Any>):Bool;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
	function prependListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):ReadStream;
	function prependOnceListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):ReadStream;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:(?err:ts.lib.IError) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, ts.lib.IUint8Array>>, ?cb:(?err:ts.lib.IError) -> Void):Bool;
	@:overload(function(data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, ts.lib.IUint8Array>>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
};