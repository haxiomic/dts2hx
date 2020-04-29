package node;
@:jsRequire("cluster") @valueModuleOnly extern class Cluster {
	static function disconnect(?callback:() -> Void):Void;
	static function fork(?env:Any):node.cluster.Worker;
	static function setupMaster(?settings:node.cluster.ClusterSettings):Void;
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
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, code:Float, signal:String) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, address:node.cluster.Address) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function addListener(event:String, listener:(args:std.Array<Any>) -> Void):node.cluster.Cluster;
	@:overload(function(event:String, worker:node.cluster.Worker):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker, code:Float, signal:String):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker, address:node.cluster.Address):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker):Bool { })
	@:overload(function(event:String, settings:node.cluster.ClusterSettings):Bool { })
	static function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, code:Float, signal:String) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, address:node.cluster.Address) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function on(event:String, listener:(args:std.Array<Any>) -> Void):node.cluster.Cluster;
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, code:Float, signal:String) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, address:node.cluster.Address) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function once(event:String, listener:(args:std.Array<Any>) -> Void):node.cluster.Cluster;
	static function removeListener(event:String, listener:(args:std.Array<Any>) -> Void):node.cluster.Cluster;
	static function removeAllListeners(?event:String):node.cluster.Cluster;
	static function setMaxListeners(n:Float):node.cluster.Cluster;
	static function getMaxListeners():Float;
	static function listeners(event:String):std.Array<js.lib.IFunction>;
	static function listenerCount(type:String):Float;
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, code:Float, signal:String) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, address:node.cluster.Address) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):node.cluster.Cluster;
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, code:Float, signal:String) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, address:node.cluster.Address) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Any, handle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):node.cluster.Cluster;
	static function eventNames():std.Array<String>;
	static var isMaster : Bool;
	static var isWorker : Bool;
	static var settings : node.cluster.ClusterSettings;
	static var worker : node.cluster.Worker;
	static var workers : { };
}