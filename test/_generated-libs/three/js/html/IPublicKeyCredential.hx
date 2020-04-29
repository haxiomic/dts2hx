package js.html;
extern typedef IPublicKeyCredential = {
	final rawId : js.lib.IArrayBuffer;
	final response : IAuthenticatorResponse;
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	final id : String;
	final type : String;
};