package node.tls;
@:jsRequire("tls", "Server") extern class Server {
	function addContext(hostName:String, credentials:{ var key : String; var cert : String; var ca : String; }):Void;
	/**
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
	**/
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, err:js.lib.IError, tlsSocket:TLSSocket):Bool { })
	@:overload(function(event:String, sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, tlsSocket:TLSSocket):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
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