package js.html;
extern interface PublicKeyCredentialDescriptor {
	var id : haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.ArrayBufferView>;
	@:optional
	var transports : std.Array<String>;
	var type : String;
}