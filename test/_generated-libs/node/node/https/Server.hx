package node.https;
@:jsRequire("https", "Server") extern class Server {
	function new(options:Any, ?requestListener:(req:node.http.IncomingMessage, res:node.http.ServerResponse) -> Void);
	@:overload(function(?msecs:Float, ?callback:() -> Void):Server { })
	function setTimeout(callback:() -> Void):Server;
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
	function addContext(hostName:String, credentials:{ var key : String; var cert : String; var ca : String; }):Void;
	/**
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
	**/
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, err:ts.lib.IError, tlsSocket:node.tls.TLSSocket):Bool { })
	@:overload(function(event:String, sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, tlsSocket:node.tls.TLSSocket):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Server;
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
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
	function close(?callback:(?err:ts.lib.IError) -> Void):Server;
	function address():Null<haxe.extern.EitherType<String, node.net.AddressInfo>>;
	function getConnections(cb:(error:Null<ts.lib.IError>, count:Float) -> Void):Void;
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
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}