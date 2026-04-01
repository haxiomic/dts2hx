package node.tls;

typedef TlsOptions = {
	@:optional
	var handshakeTimeout : Float;
	@:optional
	var requestCert : Bool;
	@:optional
	var rejectUnauthorized : Bool;
	@:optional
	var NPNProtocols : ts.AnyOf5<Array<String>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer, Array<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, Array<global.Buffer>>;
	@:optional
	var ALPNProtocols : ts.AnyOf5<Array<String>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer, Array<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, Array<global.Buffer>>;
	@:optional
	dynamic function SNICallback(servername:String, cb:(err:Null<js.lib.Error>, ctx:SecureContext) -> Void):Void;
	@:optional
	var sessionTimeout : Float;
	@:optional
	var ticketKeys : global.Buffer;
	@:optional
	var pfx : ts.AnyOf3<String, global.Buffer, Array<ts.AnyOf3<String, Dynamic, global.Buffer>>>;
	@:optional
	var key : ts.AnyOf3<String, global.Buffer, Array<ts.AnyOf2<Dynamic, global.Buffer>>>;
	@:optional
	var passphrase : String;
	@:optional
	var cert : ts.AnyOf3<String, global.Buffer, Array<ts.AnyOf2<String, global.Buffer>>>;
	@:optional
	var ca : ts.AnyOf3<String, global.Buffer, Array<ts.AnyOf2<String, global.Buffer>>>;
	@:optional
	var ciphers : String;
	@:optional
	var honorCipherOrder : Bool;
	@:optional
	var ecdhCurve : String;
	@:optional
	var clientCertEngine : String;
	@:optional
	var crl : ts.AnyOf3<String, global.Buffer, Array<ts.AnyOf2<String, global.Buffer>>>;
	@:optional
	var dhparam : ts.AnyOf2<String, global.Buffer>;
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
	var maxVersion : SecureVersion;
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
	var minVersion : SecureVersion;
};