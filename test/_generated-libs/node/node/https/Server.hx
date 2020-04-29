package node.https;
@:jsRequire("https", "Server") extern class Server {
	function new(options:{ @:optional var pfx : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.IObject, global.IBuffer>>>>>; @:optional var key : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<js.lib.IObject, global.IBuffer>>>>; @:optional var passphrase : String; @:optional var cert : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<String, global.IBuffer>>>>; @:optional var ca : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<String, global.IBuffer>>>>; @:optional var ciphers : String; @:optional var honorCipherOrder : Bool; @:optional var ecdhCurve : String; @:optional var clientCertEngine : String; @:optional var crl : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<String, global.IBuffer>>>>; @:optional var dhparam : haxe.extern.EitherType<String, global.IBuffer>; @:optional var secureOptions : Float; @:optional var secureProtocol : String; @:optional var sessionIdContext : String; /** Optionally set the maximum TLS version to allow. Oneof `TLSv1.2'`, `'TLSv1.1'`, or `'TLSv1'`. Cannot be specified along with the`secureProtocol` option, use one or the other.  **Default:** `'TLSv1.2'`. **/ @:optional var maxVersion : String; /** Optionally set the minimum TLS version to allow. Oneof `TLSv1.2'`, `'TLSv1.1'`, or `'TLSv1'`. Cannot be specified along with the`secureProtocol` option, use one or the other.  It is not recommended to useless than TLSv1.2, but it may be required for interoperability.**Default:** `'TLSv1.2'`, unless changed using CLI options. Using`--tls-v1.0` changes the default to `'TLSv1'`. Using `--tls-v1.1` changesthe default to `'TLSv1.1'`. **/ @:optional var minVersion : String; @:optional var handshakeTimeout : Float; @:optional var requestCert : Bool; @:optional var rejectUnauthorized : Bool; @:optional var NPNProtocols : haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<std.Array<js.lib.IUint8Array>, std.Array<global.IBuffer>>>>>; @:optional var ALPNProtocols : haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<std.Array<js.lib.IUint8Array>, std.Array<global.IBuffer>>>>>; @:optional var SNICallback : (servername:String, cb:(err:Null<js.lib.IError>, ctx:node.tls.SecureContext) -> Void) -> Void; @:optional var sessionTimeout : Float; @:optional var ticketKeys : global.IBuffer; @:optional var IncomingMessage : { function finished(stream:haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, callback:(?err:global.nodejs.ErrnoException) -> Void):() -> Void; @:overload(function<T:(global.nodejs.WritableStream)>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { }) @:overload(function<T:(global.nodejs.WritableStream)>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { }) @:overload(function<T:(global.nodejs.WritableStream)>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:global.nodejs.ReadWriteStream, stream5:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { }) @:overload(function(streams:std.Array<haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>>, ?callback:(err:global.nodejs.ErrnoException) -> Void):global.nodejs.WritableStream { }) @:overload(function(stream1:global.nodejs.ReadableStream, stream2:haxe.extern.EitherType<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:std.Array<haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadWriteStream, (err:global.nodejs.ErrnoException) -> Void>>>):global.nodejs.WritableStream { }) function pipeline<T:(global.nodejs.WritableStream)>(stream1:global.nodejs.ReadableStream, stream2:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T; function listenerCount(emitter:node.events.EventEmitter, event:haxe.extern.EitherType<String, js.lib.Symbol>):Float; var defaultMaxListeners : Float; }; @:optional var ServerResponse : { function finished(stream:haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, callback:(?err:global.nodejs.ErrnoException) -> Void):() -> Void; @:overload(function<T:(global.nodejs.WritableStream)>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { }) @:overload(function<T:(global.nodejs.WritableStream)>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { }) @:overload(function<T:(global.nodejs.WritableStream)>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:global.nodejs.ReadWriteStream, stream5:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { }) @:overload(function(streams:std.Array<haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>>, ?callback:(err:global.nodejs.ErrnoException) -> Void):global.nodejs.WritableStream { }) @:overload(function(stream1:global.nodejs.ReadableStream, stream2:haxe.extern.EitherType<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:std.Array<haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadWriteStream, (err:global.nodejs.ErrnoException) -> Void>>>):global.nodejs.WritableStream { }) function pipeline<T:(global.nodejs.WritableStream)>(stream1:global.nodejs.ReadableStream, stream2:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T; function listenerCount(emitter:node.events.EventEmitter, event:haxe.extern.EitherType<String, js.lib.Symbol>):Float; var defaultMaxListeners : Float; }; }, ?requestListener:(req:node.http.IncomingMessage, res:node.http.ServerResponse) -> Void);
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
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):node.tls.Server;
	@:overload(function(event:String, err:js.lib.IError, tlsSocket:node.tls.TLSSocket):Bool { })
	@:overload(function(event:String, sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void):Bool { })
	@:overload(function(event:String, tlsSocket:node.tls.TLSSocket):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):node.tls.Server;
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):node.tls.Server;
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):node.tls.Server;
	@:overload(function(event:String, listener:(err:js.lib.IError, tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, sessionData:global.IBuffer, callback:(err:js.lib.IError, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(certificate:global.IBuffer, issuer:global.IBuffer, callback:(err:Null<js.lib.IError>, resp:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(sessionId:global.IBuffer, callback:(err:js.lib.IError, sessionData:global.IBuffer) -> Void) -> Void):node.tls.Server { })
	@:overload(function(event:String, listener:(tlsSocket:node.tls.TLSSocket) -> Void):node.tls.Server { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):node.tls.Server;
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):node.net.Server { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):node.net.Server { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):node.net.Server { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):node.net.Server { })
	@:overload(function(path:String, ?listeningListener:() -> Void):node.net.Server { })
	@:overload(function(options:node.net.ListenOptions, ?listeningListener:() -> Void):node.net.Server { })
	@:overload(function(handle:Any, ?backlog:Float, ?listeningListener:() -> Void):node.net.Server { })
	@:overload(function(handle:Any, ?listeningListener:() -> Void):node.net.Server { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):node.net.Server;
	function close(?callback:(?err:js.lib.IError) -> Void):node.net.Server;
	function address():Null<haxe.extern.EitherType<String, node.net.AddressInfo>>;
	function getConnections(cb:(error:Null<js.lib.IError>, count:Float) -> Void):Void;
	function ref():node.net.Server;
	function unref():node.net.Server;
	var maxConnections : Float;
	var connections : Float;
	var listening : Bool;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):node.events.EventEmitter;
	function setMaxListeners(n:Float):node.events.EventEmitter;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}