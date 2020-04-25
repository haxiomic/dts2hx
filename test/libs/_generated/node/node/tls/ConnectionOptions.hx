package node.tls;
extern interface ConnectionOptions extends SecureContextOptions {
	@:optional
	var host : Null<String>;
	@:optional
	var port : Null<Float>;
	@:optional
	var path : Null<String>;
	@:optional
	var socket : Null<node.net.Socket>;
	@:optional
	var rejectUnauthorized : Null<Bool>;
	@:optional
	var NPNProtocols : Null<haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<std.Array<js.lib.Uint8Array>, std.Array<global.Buffer>>>>>>;
	@:optional
	var ALPNProtocols : Null<haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<std.Array<js.lib.Uint8Array>, std.Array<global.Buffer>>>>>>;
	@:optional
	var checkServerIdentity : Null<(host:String, cert:PeerCertificate) -> Null<js.lib.Error>>;
	@:optional
	var servername : Null<String>;
	@:optional
	var session : Null<global.Buffer>;
	@:optional
	var minDHSize : Null<Float>;
	@:optional
	var secureContext : Null<SecureContext>;
	@:optional
	var lookup : Null<(hostname:String, options:node.dns.LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void) -> Void>;
	@:optional
	var timeout : Null<Float>;
}