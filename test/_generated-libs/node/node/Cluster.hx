package node;

@:jsRequire("cluster") @valueModuleOnly extern class Cluster {
	static function disconnect(?callback:() -> Void):Void;
	static function fork(?env:Dynamic):node.cluster.Worker;
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
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):node.cluster.Cluster;
	@:overload(function(event:String, worker:node.cluster.Worker):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker, code:Float, signal:String):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker, address:node.cluster.Address):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>):Bool { })
	@:overload(function(event:String, worker:node.cluster.Worker):Bool { })
	@:overload(function(event:String, settings:node.cluster.ClusterSettings):Bool { })
	static function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, code:Float, signal:String) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, address:node.cluster.Address) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):node.cluster.Cluster;
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, code:Float, signal:String) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, address:node.cluster.Address) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):node.cluster.Cluster;
	static function removeListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):node.cluster.Cluster;
	static function removeAllListeners(?event:String):node.cluster.Cluster;
	static function setMaxListeners(n:Float):node.cluster.Cluster;
	static function getMaxListeners():Float;
	static function listeners(event:String):Array<haxe.Constraints.Function>;
	static function listenerCount(type:String):Float;
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, code:Float, signal:String) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, address:node.cluster.Address) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):node.cluster.Cluster;
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, code:Float, signal:String) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, address:node.cluster.Address) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(worker:node.cluster.Worker) -> Void):node.cluster.Cluster { })
	@:overload(function(event:String, listener:(settings:node.cluster.ClusterSettings) -> Void):node.cluster.Cluster { })
	static function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):node.cluster.Cluster;
	static function eventNames():Array<String>;
	static final isMaster : Bool;
	static final isWorker : Bool;
	static final settings : node.cluster.ClusterSettings;
	static final worker : node.cluster.Worker;
	static final workers : haxe.DynamicAccess<Null<node.cluster.Worker>>;
}