package ts.html;
typedef PublicKeyCredentialDescriptor = {
	var id : ts.AnyOf2<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var transports : std.Array<String>;
	var type : String;
};