package node.net;
@:jsRequire("net", "Server") extern class Server extends node.events.EventEmitter {
	@:overload(function(?options:{ @:optional var allowHalfOpen : Bool; @:optional var pauseOnConnect : Bool; }, ?connectionListener:(socket:Socket) -> Void):Server { })
	function new(?connectionListener:(socket:Socket) -> Void);
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(options:ListenOptions, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Any, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Any, ?listeningListener:() -> Void):Server { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):Server;
	function close(?callback:(?err:ts.lib.IError) -> Void):Server;
	function address():Null<ts.AnyOf2<String, AddressInfo>>;
	function getConnections(cb:(error:Null<ts.lib.IError>, count:Float) -> Void):Void;
	function ref():Server;
	function unref():Server;
	var maxConnections : Float;
	var connections : Float;
	var listening : Bool;
}