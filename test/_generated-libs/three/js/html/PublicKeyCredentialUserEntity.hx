package js.html;
extern typedef PublicKeyCredentialUserEntity = {
	var displayName : String;
	var id : haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.ArrayBufferView>;
	@:optional
	var icon : String;
	var name : String;
};