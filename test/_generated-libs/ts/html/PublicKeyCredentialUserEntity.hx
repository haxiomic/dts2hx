package ts.html;
extern typedef PublicKeyCredentialUserEntity = {
	var displayName : String;
	var id : haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var icon : String;
	var name : String;
};