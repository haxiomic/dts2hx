package node.http2;
extern typedef Http2SecureServer = node.tls.Server & { /**
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
		
		
		
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
		
		
		
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
		
		
		
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
		
		
		
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
		
		
		
		events.EventEmitter
		1. tlsClientError
		2. newSession
		3. OCSPRequest
		4. resumeSession
		5. secureConnection
		
		
		
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
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2SecureServer; @:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, socket:node.tls.TLSSocket):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool; @:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:() -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(socket:node.tls.TLSSocket) -> Void):Http2SecureServer { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Http2SecureServer; @:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:() -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(socket:node.tls.TLSSocket) -> Void):Http2SecureServer { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Http2SecureServer; @:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:() -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(socket:node.tls.TLSSocket) -> Void):Http2SecureServer { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2SecureServer; @:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:() -> Void):Http2SecureServer { })
	@:overload(function(event:String, listener:(socket:node.tls.TLSSocket) -> Void):Http2SecureServer { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2SecureServer; };