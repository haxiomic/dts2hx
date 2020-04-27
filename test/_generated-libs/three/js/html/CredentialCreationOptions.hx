package js.html;
extern interface CredentialCreationOptions {
	@:optional
	var publicKey : PublicKeyCredentialCreationOptions;
	@:optional
	var signal : AbortSignal;
}