package node.tls;
extern typedef SecureContextOptions = {
	@:optional
	var pfx : ts.AnyOf3<String, global.IBuffer, std.Array<ts.AnyOf3<String, ts.lib.IObject, global.IBuffer>>>;
	@:optional
	var key : ts.AnyOf3<String, global.IBuffer, std.Array<ts.AnyOf2<ts.lib.IObject, global.IBuffer>>>;
	@:optional
	var passphrase : String;
	@:optional
	var cert : ts.AnyOf3<String, global.IBuffer, std.Array<ts.AnyOf2<String, global.IBuffer>>>;
	@:optional
	var ca : ts.AnyOf3<String, global.IBuffer, std.Array<ts.AnyOf2<String, global.IBuffer>>>;
	@:optional
	var ciphers : String;
	@:optional
	var honorCipherOrder : Bool;
	@:optional
	var ecdhCurve : String;
	@:optional
	var clientCertEngine : String;
	@:optional
	var crl : ts.AnyOf3<String, global.IBuffer, std.Array<ts.AnyOf2<String, global.IBuffer>>>;
	@:optional
	var dhparam : ts.AnyOf2<String, global.IBuffer>;
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