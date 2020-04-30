package ts.html;
extern typedef CredentialRequestOptions = {
	@:optional
	var mediation : String;
	@:optional
	var publicKey : PublicKeyCredentialRequestOptions;
	@:optional
	var signal : IAbortSignal;
};