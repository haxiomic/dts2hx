package ts.html;
@:native("ScopedCredentialInfo") extern class ScopedCredentialInfo {
	function new();
	final credential : IScopedCredential;
	final publicKey : ICryptoKey;
	static var prototype : IScopedCredentialInfo;
}