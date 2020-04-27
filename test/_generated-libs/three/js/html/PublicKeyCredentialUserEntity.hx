package js.html;
extern interface PublicKeyCredentialUserEntity extends PublicKeyCredentialEntity {
	var displayName : String;
	var id : haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.ArrayBufferView>;
}