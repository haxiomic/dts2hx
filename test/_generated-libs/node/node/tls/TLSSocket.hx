package node.tls;

@:jsRequire("tls", "TLSSocket") extern class TLSSocket extends node.net.Socket {
	/**
		Construct a new tls.TLSSocket object from an existing TCP socket.
	**/
	function new(socket:node.net.Socket, ?options:{ /** An optional TLS context object from tls.createSecureContext() **/ @:optional var secureContext : SecureContext; /** If true the TLS socket will be instantiated in server-mode.Defaults to false. **/ @:optional var isServer : Bool; /** An optional net.Server instance. **/ @:optional var server : node.net.Server; /** If true the server will request a certificate from clients thatconnect and attempt to verify that certificate. Defaults tofalse. **/ @:optional var requestCert : Bool; /** If true the server will reject any connection which is notauthorized with the list of supplied CAs. This option only has aneffect if requestCert is true. Defaults to false. **/ @:optional var rejectUnauthorized : Bool; /** An array of strings or a Buffer naming possible NPN protocols.(Protocols should be ordered by their priority.) **/ @:optional var NPNProtocols : ts.AnyOf5<Array<String>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer, Array<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, Array<global.Buffer>>; /** An array of strings or a Buffer naming possible ALPN protocols.(Protocols should be ordered by their priority.) When the serverreceives both NPN and ALPN extensions from the client, ALPN takesprecedence over NPN and the server does not send an NPN extensionto the client. **/ @:optional var ALPNProtocols : ts.AnyOf5<Array<String>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer, Array<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, Array<global.Buffer>>; /** SNICallback(servername, cb) <Function> A function that will becalled if the client supports SNI TLS extension. Two argumentswill be passed when called: servername and cb. SNICallback shouldinvoke cb(null, ctx), where ctx is a SecureContext instance.(tls.createSecureContext(...) can be used to get a properSecureContext.) If SNICallback wasn't provided the default callbackwith high-level API will be used (see below). **/ @:optional dynamic function SNICallback(servername:String, cb:(err:Null<js.lib.Error>, ctx:SecureContext) -> Void):Void; /** An optional Buffer instance containing a TLS session. **/ @:optional var session : global.Buffer; /** If true, specifies that the OCSP status request extension will beadded to the client hello and an 'OCSPResponse' event will beemitted on the socket before establishing a secure communication **/ @:optional var requestOCSP : Bool; });
	/**
		A boolean that is true if the peer certificate was signed by one of the specified CAs, otherwise false.
	**/
	var authorized : Bool;
	/**
		The reason why the peer's certificate has not been verified.
		This property becomes available only when tlsSocket.authorized === false.
	**/
	var authorizationError : js.lib.Error;
	/**
		Static boolean value, always true.
		May be used to distinguish TLS sockets from regular ones.
	**/
	var encrypted : Bool;
	/**
		String containing the selected ALPN protocol.
		When ALPN has no selected protocol, tlsSocket.alpnProtocol equals false.
	**/
	@:optional
	var alpnProtocol : String;
	/**
		Returns an object representing the cipher name and the SSL/TLS protocol version of the current connection.
	**/
	function getCipher():CipherNameAndProtocol;
	/**
		Returns an object representing the peer's certificate.
		The returned object has some properties corresponding to the field of the certificate.
		If detailed argument is true the full chain with issuer property will be returned,
		if false only the top certificate without issuer property.
		If the peer does not provide a certificate, it returns null or an empty object.
	**/
	@:overload(function(?detailed:Bool):PeerCertificate { })
	@:overload(function(?detailed:Bool):ts.AnyOf2<PeerCertificate, DetailedPeerCertificate> { })
	function getPeerCertificate(detailed:Bool):DetailedPeerCertificate;
	/**
		Returns a string containing the negotiated SSL/TLS protocol version of the current connection.
		The value `'unknown'` will be returned for connected sockets that have not completed the handshaking process.
		The value `null` will be returned for server sockets or disconnected client sockets.
		See https://www.openssl.org/docs/man1.0.2/ssl/SSL_get_version.html for more information.
	**/
	function getProtocol():Null<String>;
	/**
		Could be used to speed up handshake establishment when reconnecting to the server.
	**/
	function getSession():Null<global.Buffer>;
	/**
		NOTE: Works only with client TLS sockets.
		Useful only for debugging, for session reuse provide session option to tls.connect().
	**/
	function getTLSTicket():Null<global.Buffer>;
	/**
		Initiate TLS renegotiation process.
		
		NOTE: Can be used to request peer's certificate after the secure connection has been established.
		ANOTHER NOTE: When running as the server, socket will be destroyed with an error after handshakeTimeout timeout.
	**/
	function renegotiate(options:{ @:optional var rejectUnauthorized : Bool; @:optional var requestCert : Bool; }, callback:(err:Null<js.lib.Error>) -> Void):Null<Bool>;
	/**
		Set maximum TLS fragment size (default and maximum value is: 16384, minimum is: 512).
		Smaller fragment size decreases buffering latency on the client: large fragments are buffered by
		the TLS layer until the entire fragment is received and its integrity is verified;
		large fragments can span multiple roundtrips, and their processing can be delayed due to packet
		loss or reordering. However, smaller fragments add extra TLS framing bytes and CPU overhead,
		which may decrease overall server throughput.
	**/
	function setMaxSendFragment(size:Float):Bool;
	/**
		events.EventEmitter
		1. OCSPResponse
		2. secureConnect
	**/
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(event:String, response:global.Buffer):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, session:global.Buffer):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(event:String, listener:(response:global.Buffer) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(session:global.Buffer) -> Void):TLSSocket { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):TLSSocket { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):TLSSocket { })
	@:overload(function(path:String, ?connectionListener:() -> Void):TLSSocket { })
	function connect(options:node.net.SocketConnectOpts, ?connectionListener:() -> Void):TLSSocket;
	function setEncoding(?encoding:String):TLSSocket;
	function pause():TLSSocket;
	function resume():TLSSocket;
	function setTimeout(timeout:Float, ?callback:() -> Void):TLSSocket;
	function setNoDelay(?noDelay:Bool):TLSSocket;
	function setKeepAlive(?enable:Bool, ?initialDelay:Float):TLSSocket;
	function setDefaultEncoding(encoding:String):TLSSocket;
	function unpipe(?destination:global.nodejs.WritableStream):TLSSocket;
	function wrap(oldStream:global.nodejs.ReadableStream):TLSSocket;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:() -> Void):TLSSocket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):TLSSocket { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket { })
	function removeListener(event:String, listener:() -> Void):TLSSocket;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):TLSSocket;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):TLSSocket;
	function setMaxListeners(n:Float):TLSSocket;
	static var prototype : TLSSocket;
}