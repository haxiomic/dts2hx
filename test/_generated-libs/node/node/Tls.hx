package node;

@:jsRequire("tls") @valueModuleOnly extern class Tls {
	static function checkServerIdentity(host:String, cert:node.tls.PeerCertificate):Null<js.lib.Error>;
	static function createServer(options:node.tls.TlsOptions, ?secureConnectionListener:(socket:node.tls.TLSSocket) -> Void):node.tls.Server;
	@:overload(function(port:Float, ?host:String, ?options:node.tls.ConnectionOptions, ?secureConnectListener:() -> Void):node.tls.TLSSocket { })
	@:overload(function(port:Float, ?options:node.tls.ConnectionOptions, ?secureConnectListener:() -> Void):node.tls.TLSSocket { })
	static function connect(options:node.tls.ConnectionOptions, ?secureConnectListener:() -> Void):node.tls.TLSSocket;
	static function createSecurePair(?credentials:node.tls.SecureContext, ?isServer:Bool, ?requestCert:Bool, ?rejectUnauthorized:Bool):node.tls.SecurePair;
	static function createSecureContext(details:node.tls.SecureContextOptions):node.tls.SecureContext;
	static function getCiphers():Array<String>;
	static final CLIENT_RENEG_LIMIT : Float;
	static final CLIENT_RENEG_WINDOW : Float;
	static final DEFAULT_ECDH_CURVE : String;
}