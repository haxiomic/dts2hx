package node.cluster;
extern typedef Cluster = {
	var Worker : Worker;
	function disconnect(?callback:() -> Void):Void;
	function fork(?env:Any):Worker;
	var isMaster : Bool;
	var isWorker : Bool;
	var settings : ClusterSettings;
	function setupMaster(?settings:ClusterSettings):Void;
	@:optional
	var worker : Worker;
	@:optional
	var workers : { };
	/**
		events.EventEmitter
		   1. disconnect
		   2. exit
		   3. fork
		   4. listening
		   5. message
		   6. online
		   7. setup
	**/
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Cluster;
	@:overload(function(event:String, worker:Worker):Bool { })
	@:overload(function(event:String, worker:Worker, code:Float, signal:String):Bool { })
	@:overload(function(event:String, worker:Worker):Bool { })
	@:overload(function(event:String, worker:Worker, address:Address):Bool { })
	@:overload(function(event:String, worker:Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>):Bool { })
	@:overload(function(event:String, worker:Worker):Bool { })
	@:overload(function(event:String, settings:ClusterSettings):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Cluster;
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Cluster;
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Cluster;
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Cluster;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Cluster;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Cluster;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Cluster;
	function setMaxListeners(n:Float):Cluster;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
};