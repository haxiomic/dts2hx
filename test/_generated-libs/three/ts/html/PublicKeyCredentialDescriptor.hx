package ts.html;
extern typedef PublicKeyCredentialDescriptor = {
	var id : haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var transports : std.Array<String>;
	var type : String;
};