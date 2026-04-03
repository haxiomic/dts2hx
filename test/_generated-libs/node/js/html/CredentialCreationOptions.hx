package js.html;

typedef CredentialCreationOptions = {
	@:optional
	var publicKey : PublicKeyCredentialCreationOptions;
	@:optional
	var signal : js.html.AbortSignal;
};