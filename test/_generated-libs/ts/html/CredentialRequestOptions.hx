package ts.html;
typedef CredentialRequestOptions = {
	@:optional
	var mediation : String;
	@:optional
	var publicKey : PublicKeyCredentialRequestOptions;
	@:optional
	var signal : AbortSignal;
};