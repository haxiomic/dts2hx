package ts.html;
@:native("PublicKeyCredential") extern class PublicKeyCredential {
	function new();
	final rawId : ts.lib.IArrayBuffer;
	final response : IAuthenticatorResponse;
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	final id : String;
	final type : String;
	static var prototype : IPublicKeyCredential;
	static function isUserVerifyingPlatformAuthenticatorAvailable():ts.lib.IPromise<Bool>;
}