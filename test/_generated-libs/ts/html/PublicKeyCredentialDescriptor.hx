package ts.html;
extern typedef PublicKeyCredentialDescriptor = {
	var id : ts.AnyOf2<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var transports : std.Array<String>;
	var type : String;
};