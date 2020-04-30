package ts.html;
extern typedef IPublicKeyCredential = {
	final rawId : ts.lib.IArrayBuffer;
	final response : IAuthenticatorResponse;
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	final id : String;
	final type : String;
};