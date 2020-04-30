package node.http2;
extern typedef SecureClientSessionOptions = {
	@:optional
	var maxDeflateDynamicTableSize : Float;
	@:optional
	var maxReservedRemoteStreams : Float;
	@:optional
	var maxSendHeaderBlockLength : Float;
	@:optional
	var paddingStrategy : Float;
	@:optional
	var peerMaxConcurrentStreams : Float;
	@:optional
	var selectPadding : (frameLen:Float, maxFrameLen:Float) -> Float;
	@:optional
	var settings : Settings;
	@:optional
	var createConnection : (option:SessionOptions) -> node.stream.Duplex;
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var path : String;
	@:optional
	var socket : node.net.Socket;
	@:optional
	var rejectUnauthorized : Bool;
	@:optional
	var NPNProtocols : haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<std.Array<ts.lib.IUint8Array>, std.Array<global.IBuffer>>>>>;
	@:optional
	var ALPNProtocols : haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<std.Array<ts.lib.IUint8Array>, std.Array<global.IBuffer>>>>>;
	@:optional
	var checkServerIdentity : (host:String, cert:node.tls.PeerCertificate) -> Null<ts.lib.IError>;
	@:optional
	var servername : String;
	@:optional
	var session : global.IBuffer;
	@:optional
	var minDHSize : Float;
	@:optional
	var secureContext : node.tls.SecureContext;
	@:optional
	var lookup : (hostname:String, options:node.dns.LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void) -> Void;
	@:optional
	var timeout : Float;
	@:optional
	var pfx : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<ts.lib.IObject, global.IBuffer>>>>>;
	@:optional
	var key : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<ts.lib.IObject, global.IBuffer>>>>;
	@:optional
	var passphrase : String;
	@:optional
	var cert : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<String, global.IBuffer>>>>;
	@:optional
	var ca : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<String, global.IBuffer>>>>;
	@:optional
	var ciphers : String;
	@:optional
	var honorCipherOrder : Bool;
	@:optional
	var ecdhCurve : String;
	@:optional
	var clientCertEngine : String;
	@:optional
	var crl : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<String, global.IBuffer>>>>;
	@:optional
	var dhparam : haxe.extern.EitherType<String, global.IBuffer>;
	@:optional
	var secureOptions : Float;
	@:optional
	var secureProtocol : String;
	@:optional
	var sessionIdContext : String;
	/**
		Optionally set the maximum TLS version to allow. One
		of `TLSv1.2'`, `'TLSv1.1'`, or `'TLSv1'`. Cannot be specified along with the
		`secureProtocol` option, use one or the other.  **Default:** `'TLSv1.2'`.
	**/
	@:optional
	var maxVersion : String;
	/**
		Optionally set the minimum TLS version to allow. One
		of `TLSv1.2'`, `'TLSv1.1'`, or `'TLSv1'`. Cannot be specified along with the
		`secureProtocol` option, use one or the other.  It is not recommended to use
		less than TLSv1.2, but it may be required for interoperability.
		**Default:** `'TLSv1.2'`, unless changed using CLI options. Using
		`--tls-v1.0` changes the default to `'TLSv1'`. Using `--tls-v1.1` changes
		the default to `'TLSv1.1'`.
	**/
	@:optional
	var minVersion : String;
};