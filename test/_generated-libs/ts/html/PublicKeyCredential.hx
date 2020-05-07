package ts.html;
@:native("PublicKeyCredential") extern class PublicKeyCredential {
	function new();
	final rawId : ts.lib.ArrayBuffer;
	final response : AuthenticatorResponse;
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	final id : String;
	final type : String;
	static var prototype : PublicKeyCredential;
	static function isUserVerifyingPlatformAuthenticatorAvailable():ts.lib.Promise<Bool>;
}