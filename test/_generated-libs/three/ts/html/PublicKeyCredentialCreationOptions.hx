package ts.html;
extern typedef PublicKeyCredentialCreationOptions = {
	@:optional
	var attestation : String;
	@:optional
	var authenticatorSelection : AuthenticatorSelectionCriteria;
	var challenge : haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var excludeCredentials : std.Array<PublicKeyCredentialDescriptor>;
	@:optional
	var extensions : AuthenticationExtensionsClientInputs;
	var pubKeyCredParams : std.Array<PublicKeyCredentialParameters>;
	var rp : PublicKeyCredentialRpEntity;
	@:optional
	var timeout : Float;
	var user : PublicKeyCredentialUserEntity;
};