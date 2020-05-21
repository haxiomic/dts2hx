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
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, err:js.lib.Error, tlsSocket:TLSSocket):Bool { })
	@:overload(function(event:String, sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void):Bool { })
	@:overload(function(event:String, certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void):Bool { })
	@:overload(function(event:String, sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void):Bool { })
	@:overload(function(event:String, tlsSocket:TLSSocket):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(tlsSocket:TLSSocket) -> Void):Server { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	@:overload(function(event:String, listener:(err:js.lib.Error, tlsSocket:TLSSocket) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, sessionData:global.Buffer, callback:(err:js.lib.Error, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(certificate:global.Buffer, issuer:global.Buffer, callback:(err:Null<js.lib.Error>, resp:global.Buffer) -> Void) -> Void):Server { })
	@:overload(function(event:String, listener:(sessionId:global.Buffer, callback:(err:js.lib.Error, sessionData:global.Buffer) -> Void) -> Void):Server { })
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
	function close(?callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Server;
	function ref():Server;
	function unref():Server;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Server;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Server;
	function setMaxListeners(n:Float):Server;
	static var prototype : Server;
}