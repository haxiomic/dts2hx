package ts.html;
@:native("PublicKeyCredential") extern class PublicKeyCredential {
	function new();
	final rawId : ts.lib.IArrayBuffer;
	final response : IAuthenticatorResponse;
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	static var prototype : IPublicKeyCredential;
	static function isUserVerifyingPlatformAuthenticatorAvailable():ts.lib.IPromise<Bool>;
}