package js.html;
extern interface CredentialRequestOptions {
	@:optional
	var mediation : String;
	@:optional
	var publicKey : PublicKeyCredentialRequestOptions;
	@:optional
	var signal : AbortSignal;
}