package node.net;
@:jsRequire("net", "Server") extern class Server extends node.events.EventEmitter {
	@:overload(function(?options:{ @:optional
	var allowHalfOpen : Bool; @:optional
	var pauseOnConnect : Bool; }, ?connectionListener:(socket:Socket) -> Void):Server { })
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
	function close(?callback:(?err:js.lib.Error) -> Void):Server;
	function address():Null<haxe.extern.EitherType<String, AddressInfo>>;
	function getConnections(cb:(error:Null<js.lib.Error>, count:Float) -> Void):Void;
	function ref():Server;
	function unref():Server;
	var maxConnections : Float;
	var connections : Float;
	var listening : Bool;
	/**
		events.EventEmitter
		   1. close
		   2. connection
		   3. error
		   4. listening
	**/
	@:overload(function(event:String, listener:() -> Void):Server { })
	@:overload(function(event:String, listener:(socket:Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, socket:Socket):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:() -> Void):Server { })
	@:overload(function(event:String, listener:(socket:Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:() -> Void):Server { })
	@:overload(function(event:String, listener:(socket:Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:() -> Void):Server { })
	@:overload(function(event:String, listener:(socket:Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:() -> Void):Server { })
	@:overload(function(event:String, listener:(socket:Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
}