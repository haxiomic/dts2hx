package js.html;
@:native("PublicKeyCredential") @tsInterface extern class PublicKeyCredential {
	function new();
	final rawId : js.lib.ArrayBuffer;
	final response : AuthenticatorResponse;
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	final id : String;
	final type : String;
	static var prototype : PublicKeyCredential;
	static function isUserVerifyingPlatformAuthenticatorAvailable():js.lib.Promise<Bool>;
}