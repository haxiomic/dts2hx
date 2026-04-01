package node.cluster;

typedef Cluster = {
	var Worker : Worker;
	function disconnect(?callback:() -> Void):Void;
	function fork(?env:Dynamic):Worker;
	var isMaster : Bool;
	var isWorker : Bool;
	var settings : ClusterSettings;
	function setupMaster(?settings:ClusterSettings):Void;
	@:optional
	var worker : Worker;
	@:optional
	var workers : haxe.DynamicAccess<Null<Worker>>;
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
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	@:overload(function(event:String, worker:Worker):Bool { })
	@:overload(function(event:String, worker:Worker, code:Float, signal:String):Bool { })
	@:overload(function(event:String, worker:Worker):Bool { })
	@:overload(function(event:String, worker:Worker, address:Address):Bool { })
	@:overload(function(event:String, worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>):Bool { })
	@:overload(function(event:String, worker:Worker):Bool { })
	@:overload(function(event:String, settings:ClusterSettings):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, code:Float, signal:String) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, address:Address) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker, message:Dynamic, handle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):Cluster { })
	@:overload(function(event:String, listener:(worker:Worker) -> Void):Cluster { })
	@:overload(function(event:String, listener:(settings:ClusterSettings) -> Void):Cluster { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Cluster;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Cluster;
	function setMaxListeners(n:Float):Cluster;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};