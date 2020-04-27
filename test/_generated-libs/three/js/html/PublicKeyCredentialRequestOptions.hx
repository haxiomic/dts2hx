package js.html;
extern interface PublicKeyCredentialRequestOptions {
	@:optional
	var allowCredentials : std.Array<PublicKeyCredentialDescriptor>;
	var challenge : haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.ArrayBufferView>;
	@:optional
	var extensions : AuthenticationExtensionsClientInputs;
	@:optional
	var rpId : String;
	@:optional
	var timeout : Float;
	@:optional
	var userVerification : String;
}