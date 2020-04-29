package node.http;
@:jsRequire("http", "Server") extern class Server {
	@:overload(function(options:ServerOptions, ?requestListener:(req:IncomingMessage, res:ServerResponse) -> Void):Server { })
	function new(?requestListener:(req:IncomingMessage, res:ServerResponse) -> Void);
	@:overload(function(callback:() -> Void):Server { })
	function setTimeout(?msecs:Float, ?callback:() -> Void):Server;
	/**
		Limits maximum incoming headers count. If set to 0, no limit will be applied.
	**/
	var maxHeadersCount : Null<Float>;
	var timeout : Float;
	/**
		Limit the amount of time the parser will wait to receive the complete HTTP headers.
	**/
	var headersTimeout : Float;
	var keepAliveTimeout : Float;
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(options:node.net.ListenOptions, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Any, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Any, ?listeningListener:() -> Void):Server { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):Server;
	function close(?callback:(?err:js.lib.IError) -> Void):Server;
	function address():Null<haxe.extern.EitherType<String, node.net.AddressInfo>>;
	function getConnections(cb:(error:Null<js.lib.IError>, count:Float) -> Void):Void;
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
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, socket:node.net.Socket):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:() -> Void):Server { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:() -> Void):Server { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:() -> Void):Server { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:() -> Void):Server { })
	@:overload(function(event:String, listener:(socket:node.net.Socket) -> Void):Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Server { })
	@:overload(function(event:String, listener:() -> Void):Server { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Server;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Server;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Server;
	function setMaxListeners(n:Float):Server;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}