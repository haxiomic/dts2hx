package node.tls;
extern typedef SecureContextOptions = {
	@:optional
	var pfx : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.IObject, global.IBuffer>>>>>;
	@:optional
	var key : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, std.Array<haxe.extern.EitherType<js.lib.IObject, global.IBuffer>>>>;
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