package js.html;
extern typedef PublicKeyCredentialDescriptor = {
	var id : haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.ArrayBufferView>;
	@:optional
	var transports : std.Array<String>;
	var type : String;
};