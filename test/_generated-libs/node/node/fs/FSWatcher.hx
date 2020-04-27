package node.fs;
extern interface FSWatcher extends node.events.EventEmitter {
	function close():Void;
	/**
		events.EventEmitter
		   1. change
		   2. error
	**/
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.Buffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):FSWatcher { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.Buffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):FSWatcher { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.Buffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):FSWatcher { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.Buffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):FSWatcher { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:haxe.extern.EitherType<String, global.Buffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):FSWatcher { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):FSWatcher;
}