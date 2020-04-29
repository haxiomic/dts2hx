package node.fs;
extern typedef FSWatcher = {
	function close():Void;
	/**
		events.EventEmitter
		   1. change
		   2. error
	**/
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):FSWatcher { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):FSWatcher { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):FSWatcher { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):FSWatcher { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.IError) -> Void):FSWatcher { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):node.events.EventEmitter;
	function setMaxListeners(n:Float):node.events.EventEmitter;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
};