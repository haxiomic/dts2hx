package node.worker_threads;
@:jsRequire("worker_threads", "MessagePort") extern class MessagePort extends node.events.EventEmitter {
	function close():Void;
	function postMessage(value:Any, ?transferList:std.Array<haxe.extern.EitherType<MessagePort, js.lib.ArrayBuffer>>):Void;
	function ref():Void;
	function unref():Void;
	function start():Void;
	@:overload(function(event:String, listener:(value:Any) -> Void):MessagePort { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):MessagePort { })
	function addListener(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, value:Any):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(value:Any) -> Void):MessagePort { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):MessagePort { })
	function on(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Any) -> Void):MessagePort { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):MessagePort { })
	function once(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Any) -> Void):MessagePort { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):MessagePort { })
	function prependListener(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Any) -> Void):MessagePort { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):MessagePort { })
	function prependOnceListener(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Any) -> Void):MessagePort { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):MessagePort { })
	function removeListener(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Any) -> Void):MessagePort { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):MessagePort { })
	function off(event:String, listener:() -> Void):MessagePort;
}