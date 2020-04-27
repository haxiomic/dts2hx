package node.tls;
extern typedef ConnectionOptions = SecureContextOptions & { @:optional
	var host : String; @:optional
	var port : Float; @:optional
	var path : String; @:optional
	var socket : node.net.Socket; @:optional
	var rejectUnauthorized : Bool; @:optional
	var NPNProtocols : haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<std.Array<js.lib.Uint8Array>, std.Array<global.Buffer>>>>>; @:optional
	var ALPNProtocols : haxe.extern.EitherType<std.Array<String>, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<std.Array<js.lib.Uint8Array>, std.Array<global.Buffer>>>>>; @:optional
	var checkServerIdentity : (host:String, cert:PeerCertificate) -> Null<js.lib.Error>; @:optional
	var servername : String; @:optional
	var session : global.Buffer; @:optional
	var minDHSize : Float; @:optional
	var secureContext : SecureContext; @:optional
	var lookup : (hostname:String, options:node.dns.LookupOneOptions, callback:(err:Null<global.nodejs.ErrnoException>, address:String, family:Float) -> Void) -> Void; @:optional
	var timeout : Float; };