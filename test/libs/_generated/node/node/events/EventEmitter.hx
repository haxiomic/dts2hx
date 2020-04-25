package node.events;
@:jsRequire("events", "EventEmitter") extern class EventEmitter extends node.Events {
	function addListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):EventEmitter;
	function on(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):EventEmitter;
	function once(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):EventEmitter;
	function prependListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):EventEmitter;
	function prependOnceListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):EventEmitter;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):EventEmitter;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):EventEmitter;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):EventEmitter;
	function setMaxListeners(n:Float):EventEmitter;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.Function>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.Function>;
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
	static function listenerCount(emitter:EventEmitter, event:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
	static var defaultMaxListeners : Float;
}