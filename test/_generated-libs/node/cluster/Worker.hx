package node.cluster;
@:jsRequire("cluster", "Worker") extern class Worker {
	var id : Float;
	var process : node.child_process.ChildProcess;
	function send(message:Any, ?sendHandle:Any, ?callback:(error:ts.lib.IError) -> Void):Bool;
	function kill(?signal:String):Void;
	function destroy(?signal:String):Void;
	function disconnect():Void;
	function isConnected():Bool;
	function isDead():Bool;
	var exitedAfterDisconnect : Bool;
	/**
		events.EventEmitter
		   1. disconnect
		   2. error
		   3. exit
		   4. listening
		   5. message
		   6. online
	**/
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Worker;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, error:ts.lib.IError):Bool { })
	@:overload(function(event:String, code:Float, signal:String):Bool { })
	@:overload(function(event:String, address:Address):Bool { })
	@:overload(function(event:String, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Worker;
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Worker;
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Worker;
	@:overload(function(event:String, listener:() -> Void):Worker { })
	@:overload(function(event:String, listener:(error:ts.lib.IError) -> Void):Worker { })
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):Worker { })
	@:overload(function(event:String, listener:(address:Address) -> Void):Worker { })
	@:overload(function(event:String, listener:(message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Worker { })
	@:overload(function(event:String, listener:() -> Void):Worker { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Worker;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Worker;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Worker;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Worker;
	function setMaxListeners(n:Float):Worker;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}