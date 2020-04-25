package node.tls;
extern interface SecureContextOptions {
	@:optional
	var pfx : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.Object, global.Buffer>>>>>>;
	@:optional
	var key : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, std.Array<haxe.extern.EitherType<js.lib.Object, global.Buffer>>>>>;
	@:optional
	var passphrase : Null<String>;
	@:optional
	var cert : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, std.Array<haxe.extern.EitherType<String, global.Buffer>>>>>;
	@:optional
	var ca : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, std.Array<haxe.extern.EitherType<String, global.Buffer>>>>>;
	@:optional
	var ciphers : Null<String>;
	@:optional
	var honorCipherOrder : Null<Bool>;
	@:optional
	var ecdhCurve : Null<String>;
	@:optional
	var clientCertEngine : Null<String>;
	@:optional
	var crl : Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, std.Array<haxe.extern.EitherType<String, global.Buffer>>>>>;
	@:optional
	var dhparam : Null<haxe.extern.EitherType<String, global.Buffer>>;
	@:optional
	var secureOptions : Null<Float>;
	@:optional
	var secureProtocol : Null<String>;
	@:optional
	var sessionIdContext : Null<String>;
	/**
		Optionally set the maximum TLS version to allow. One
		of `TLSv1.2'`, `'TLSv1.1'`, or `'TLSv1'`. Cannot be specified along with the
		`secureProtocol` option, use one or the other.  **Default:** `'TLSv1.2'`.
	**/
	@:optional
	var maxVersion : Null<String>;
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
	var minVersion : Null<String>;
}