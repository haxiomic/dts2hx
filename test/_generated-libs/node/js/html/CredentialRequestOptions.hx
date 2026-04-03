package js.html;

typedef CredentialRequestOptions = {
	@:optional
	var mediation : CredentialMediationRequirement;
	@:optional
	var publicKey : PublicKeyCredentialRequestOptions;
	@:optional
	var signal : js.html.AbortSignal;
};