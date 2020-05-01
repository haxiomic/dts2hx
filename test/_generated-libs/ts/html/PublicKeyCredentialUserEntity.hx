package ts.html;
typedef PublicKeyCredentialUserEntity = {
	var displayName : String;
	var id : ts.AnyOf2<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var icon : String;
	var name : String;
};