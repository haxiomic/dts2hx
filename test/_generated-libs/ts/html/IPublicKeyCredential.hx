package ts.html;
typedef IPublicKeyCredential = {
	final rawId : ts.lib.ArrayBuffer;
	final response : AuthenticatorResponse;
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	final id : String;
	final type : String;
};