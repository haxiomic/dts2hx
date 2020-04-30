package ts.html;
extern typedef CredentialCreationOptions = {
	@:optional
	var publicKey : PublicKeyCredentialCreationOptions;
	@:optional
	var signal : IAbortSignal;
};