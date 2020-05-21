package node.https;

@:jsRequire("https", "Server") extern class Server extends node.tls.Server {
	function new(options:ServerOptions, ?requestListener:node.http.RequestListener);
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
	/**
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
	**/
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):Server { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(path:String, ?listeningListener:() -> Void):Server { })
	@:overload(function(options:node.net.ListenOptions, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Dynamic, ?backlog:Float, ?listeningListener:() -> Void):Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:() -> Void):Server { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):Server;
	function close(?callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Server;
	function ref():Server;
	function unref():Server;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Server;
	function setMaxListeners(n:Float):Server;
	static var prototype : Server;
}