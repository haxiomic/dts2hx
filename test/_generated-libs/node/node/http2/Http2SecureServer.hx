package node.http2;

typedef Http2SecureServer = {
	/**
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
	**/
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:() -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(socket:node.tls.TLSSocket) -> Void):Http2SecureServer { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2SecureServer;
	@:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, socket:node.tls.TLSSocket):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:() -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(socket:node.tls.TLSSocket) -> Void):Http2SecureServer { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2SecureServer;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:() -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(socket:node.tls.TLSSocket) -> Void):Http2SecureServer { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2SecureServer;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:() -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(socket:node.tls.TLSSocket) -> Void):Http2SecureServer { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2SecureServer;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:() -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(socket:node.tls.TLSSocket) -> Void):Http2SecureServer { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2SecureServer;
	function addContext(hostName:String, credentials:{ var key : String; var cert : String; var ca : String; }):Void;
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):Http2SecureServer { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):Http2SecureServer { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):Http2SecureServer { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):Http2SecureServer { })
	@:overload(function(path:String, ?listeningListener:() -> Void):Http2SecureServer { })
	@:overload(function(options:node.net.ListenOptions, ?listeningListener:() -> Void):Http2SecureServer { })
	@:overload(function(handle:Dynamic, ?backlog:Float, ?listeningListener:() -> Void):Http2SecureServer { })
	@:overload(function(handle:Dynamic, ?listeningListener:() -> Void):Http2SecureServer { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):Http2SecureServer;
	function close(?callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Http2SecureServer;
	function address():Null<ts.AnyOf2<String, node.net.AddressInfo>>;
	function getConnections(cb:(error:Null<js.lib.Error>, count:Float) -> Void):Void;
	function ref():Http2SecureServer;
	function unref():Http2SecureServer;
	var maxConnections : Float;
	var connections : Float;
	var listening : Bool;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2SecureServer;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2SecureServer;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Http2SecureServer;
	function setMaxListeners(n:Float):Http2SecureServer;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};