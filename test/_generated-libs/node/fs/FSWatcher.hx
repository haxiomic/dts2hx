package node.fs;
typedef FSWatcher = {
	function close():Void;
	/**
		events.EventEmitter
		   1. change
		   2. error
	**/
	@:overload(function(event:String, listener:(eventType:String, filename:ts.AnyOf2<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):FSWatcher { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:ts.AnyOf2<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):FSWatcher { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:ts.AnyOf2<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):FSWatcher { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:ts.AnyOf2<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):FSWatcher { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):FSWatcher;
	@:overload(function(event:String, listener:(eventType:String, filename:ts.AnyOf2<String, global.IBuffer>) -> Void):FSWatcher { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):FSWatcher { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):FSWatcher;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):FSWatcher;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):FSWatcher;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):FSWatcher;
	function setMaxListeners(n:Float):FSWatcher;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	function eventNames():std.Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};