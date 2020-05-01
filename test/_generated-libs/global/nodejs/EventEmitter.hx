package global.nodejs;
@:native("NodeJS.EventEmitter") extern class EventEmitter {
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):EventEmitter;
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):EventEmitter;
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):EventEmitter;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):EventEmitter;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):EventEmitter;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):EventEmitter;
	function setMaxListeners(n:Float):EventEmitter;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Any>):Bool;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	function prependListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):EventEmitter;
	function prependOnceListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):EventEmitter;
	function eventNames():std.Array<ts.AnyOf2<String, js.lib.Symbol>>;
}