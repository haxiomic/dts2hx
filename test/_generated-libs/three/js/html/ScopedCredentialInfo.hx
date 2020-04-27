package js.html;
@:native("ScopedCredentialInfo") @tsInterface extern class ScopedCredentialInfo {
	function new();
	final credential : ScopedCredential;
	final publicKey : CryptoKey;
	static var prototype : ScopedCredentialInfo;
}