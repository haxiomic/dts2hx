package node.worker_threads;
@:jsRequire("worker_threads", "Worker") extern class Worker extends node.events.EventEmitter {
	function new(filename:String, ?options:WorkerOptions);
	final stdin : Null<node.stream.Writable>;
	final stdout : node.stream.Readable;
	final stderr : node.stream.Readable;
	final threadId : Float;
	function postMessage(value:Dynamic, ?transferList:Array<ts.AnyOf2<MessagePort, ts.lib.ArrayBuffer>>):Void;
	function ref():Void;
	function unref():Void;
	function terminate(?callback:(err:ts.lib.Error, exitCode:Float) -> Void):Void;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function addListener(event:String, listener:(err:ts.lib.Error) -> Void):Worker;
	@:overload(function(event:String, exitCode:Float):Bool { })
	@:overload(function(event:String, value:Dynamic):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String, err:ts.lib.Error):Bool;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function on(event:String, listener:(err:ts.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function once(event:String, listener:(err:ts.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function prependListener(event:String, listener:(err:ts.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function prependOnceListener(event:String, listener:(err:ts.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function removeListener(event:String, listener:(err:ts.lib.Error) -> Void):Worker;
	@:overload(function(event:String, listener:(exitCode:Float) -> Void):Worker { })
	@:overload(function(event:String, listener:(value:Dynamic) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Worker { })
	function off(event:String, listener:(err:ts.lib.Error) -> Void):Worker;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Worker;
	function setMaxListeners(n:Float):Worker;
}