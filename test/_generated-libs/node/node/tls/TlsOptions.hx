package node.tls;
extern typedef TlsOptions = SecureContextOptions & { @:optional
	var handshakeTimeout : Float; @:optional
	var requestCert : Bool; @:optional
	var rejectUnauthorized : Bool; @:optional
	var NPNProtocols : haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<std.Array<js.lib.Uint8Array>, std.Array<global.Buffer>>>>>; @:optional
	var ALPNProtocols : haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<std.Array<js.lib.Uint8Array>, std.Array<global.Buffer>>>>>; @:optional
	var SNICallback : (servername:String, cb:(err:Null<js.lib.Error>, ctx:SecureContext) -> Void) -> Void; @:optional
	var sessionTimeout : Float; @:optional
	var ticketKeys : global.Buffer; };