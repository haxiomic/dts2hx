package ts.html;
typedef CredentialCreationOptions = {
	@:optional
	var publicKey : PublicKeyCredentialCreationOptions;
	@:optional
	var signal : IAbortSignal;
};