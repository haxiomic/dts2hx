package js.html;
extern interface PublicKeyCredentialCreationOptions {
	@:optional
	var attestation : String;
	@:optional
	var authenticatorSelection : AuthenticatorSelectionCriteria;
	var challenge : haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.ArrayBufferView>;
	@:optional
	var excludeCredentials : std.Array<PublicKeyCredentialDescriptor>;
	@:optional
	var extensions : AuthenticationExtensionsClientInputs;
	var pubKeyCredParams : std.Array<PublicKeyCredentialParameters>;
	var rp : PublicKeyCredentialRpEntity;
	@:optional
	var timeout : Float;
	var user : PublicKeyCredentialUserEntity;
}