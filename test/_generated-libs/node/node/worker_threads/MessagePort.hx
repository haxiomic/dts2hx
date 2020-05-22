package node.worker_threads;

@:jsRequire("worker_threads", "MessagePort") extern class MessagePort extends node.events.EventEmitter {
	function new();
	function close():Void;
	function postMessage(value:Dynamic, ?transferList:Array<ts.AnyOf2<MessagePort, js.lib.ArrayBuffer>>):Void;
	function ref():Void;
	function unref():Void;
	function start():Void;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MessagePort { })
	function addListener(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, value:Dynamic):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MessagePort { })
	function on(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MessagePort { })
	function once(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MessagePort { })
	function prependListener(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MessagePort { })
	function prependOnceListener(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MessagePort { })
	function removeListener(event:String, listener:() -> Void):MessagePort;
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):MessagePort { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):MessagePort { })
	function off(event:String, listener:() -> Void):MessagePort;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):MessagePort;
	function setMaxListeners(n:Float):MessagePort;
	static var prototype : MessagePort;
}