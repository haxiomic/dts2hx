package node.https;

typedef AgentOptions = {
	@:optional
	var rejectUnauthorized : Bool;
	@:optional
	var maxCachedSessions : Float;
	/**
		Keep sockets around in a pool to be used by other requests in the future. Default = false
	**/
	@:optional
	var keepAlive : Bool;
	/**
		When using HTTP KeepAlive, how often to send TCP KeepAlive packets over sockets being kept alive. Default = 1000.
		Only relevant if keepAlive is set to true.
	**/
	@:optional
	var keepAliveMsecs : Float;
	/**
		Maximum number of sockets to allow per host. Default for Node 0.10 is 5, default for Node 0.12 is Infinity
	**/
	@:optional
	var maxSockets : Float;
	/**
		Maximum number of sockets to leave open in a free state. Only relevant if keepAlive is set to true. Default = 256.
	**/
	@:optional
	var maxFreeSockets : Float;
	/**
		Socket timeout in milliseconds. This will set the timeout after the socket is connected.
	**/
	@:optional
	var timeout : Float;
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var path : String;
	@:optional
	var socket : node.net.Socket;
	@:optional
	var NPNProtocols : ts.AnyOf5<Array<String>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer, Array<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, Array<global.Buffer>>;
	@:optional
	var ALPNProtocols : ts.AnyOf5<Array<String>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer, Array<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, Array<global.Buffer>>;
	@:optional
	dynamic function checkServerIdentity(host:String, cert:node.tls.PeerCertificate):Null<js.lib.Error>;
	@:optional
	var servername : String;
	@:optional
	var session : global.Buffer;
	@:optional
	var minDHSize : Float;
	@:optional
	var secureContext : node.tls.SecureContext;
	@:optional
	dynamic function lookup(hostname:String, options:node.dns.LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void):Void;
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
	var maxVersion : node.tls.SecureVersion;
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
	var minVersion : node.tls.SecureVersion;
};