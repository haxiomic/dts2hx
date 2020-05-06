package node.tls;
@:jsRequire("tls", "Server") extern class Server extends node.net.Server {
	function addContext(hostName:String, credentials:{ var key : String; var cert : String; var ca : String; }):Void;
	/**
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
	**/
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, err:ts.lib.IError, tlsSocket:TLSSocket):Bool { })
	@:overload(function(event:String, sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, tlsSocket:TLSSocket):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:ts.lib.IError, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:ts.lib.IError, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<ts.lib.IError>, resp:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:ts.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
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
	function close(?callback:ts.AnyOf2<() -> Void, (err:ts.lib.IError) -> Void>):Server;
	function ref():Server;
	function unref():Server;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Server;
	function setMaxListeners(n:Float):Server;
}