package global.nodejs;
extern typedef Events = {
	function addListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Events;
	function on(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Events;
	function once(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Events;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Events;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Events;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Events;
	function setMaxListeners(n:Float):Events;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:haxe.extern.Rest<Any>):Bool;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
	function prependListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Events;
	function prependOnceListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Events;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
};