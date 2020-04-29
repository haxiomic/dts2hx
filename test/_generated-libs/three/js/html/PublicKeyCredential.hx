package js.html;
@:native("PublicKeyCredential") extern class PublicKeyCredential {
	function new();
	final rawId : js.lib.IArrayBuffer;
	final response : IAuthenticatorResponse;
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	final id : String;
	final type : String;
	static var prototype : IPublicKeyCredential;
	static function isUserVerifyingPlatformAuthenticatorAvailable():js.lib.IPromise<Bool>;
}