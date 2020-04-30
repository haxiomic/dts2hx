package ts.html;
extern typedef PublicKeyCredentialRequestOptions = {
	@:optional
	var allowCredentials : std.Array<PublicKeyCredentialDescriptor>;
	var challenge : haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var extensions : AuthenticationExtensionsClientInputs;
	@:optional
	var rpId : String;
	@:optional
	var timeout : Float;
	@:optional
	var userVerification : String;
};