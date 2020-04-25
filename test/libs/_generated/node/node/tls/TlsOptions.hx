package node.tls;
extern interface TlsOptions extends SecureContextOptions {
	@:optional
	var handshakeTimeout : Null<Float>;
	@:optional
	var requestCert : Null<Bool>;
	@:optional
	var rejectUnauthorized : Null<Bool>;
	@:optional
	var NPNProtocols : Null<haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<std.Array<js.lib.Uint8Array>, std.Array<global.Buffer>>>>>>;
	@:optional
	var ALPNProtocols : Null<haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<std.Array<js.lib.Uint8Array>, std.Array<global.Buffer>>>>>>;
	@:optional
	var SNICallback : Null<(servername:String, cb:(err:Null<js.lib.Error>, ctx:SecureContext) -> Void) -> Void>;
	@:optional
	var sessionTimeout : Null<Float>;
	@:optional
	var ticketKeys : Null<global.Buffer>;
}