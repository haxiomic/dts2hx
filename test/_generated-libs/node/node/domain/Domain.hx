package node.domain;
@:jsRequire("domain", "Domain") extern class Domain {
	function run<T>(fn:(args:std.Array<Any>) -> T, args:std.Array<Any>):T;
	function add(emitter:haxe.extern.EitherType<node.events.EventEmitter, global.nodejs.Timer>):Void;
	function remove(emitter:haxe.extern.EitherType<node.events.EventEmitter, global.nodejs.Timer>):Void;
	function bind<T>(cb:T):T;
	function intercept<T>(cb:T):T;
	var members : std.Array<haxe.extern.EitherType<node.events.EventEmitter, global.nodejs.Timer>>;
	function enter():Void;
	function exit():Void;
	function addListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Domain;
	function on(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Domain;
	function once(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Domain;
	function prependListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Domain;
	function prependOnceListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Domain;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Domain;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Domain;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Domain;
	function setMaxListeners(n:Float):Domain;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}