package ts.html;
@:native("ScopedCredentialInfo") extern class ScopedCredentialInfo {
	function new();
	final credential : ScopedCredential;
	final publicKey : CryptoKey;
	static var prototype : ScopedCredentialInfo;
}