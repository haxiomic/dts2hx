package js.html;

/**
	The **`AuthenticatorAttestationResponse`** interface of the Web Authentication API is the result of a WebAuthn credential registration.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAttestationResponse)
**/
@:native("AuthenticatorAttestationResponse") extern class AuthenticatorAttestationResponse {
	function new();
	/**
		The **`attestationObject`** property of the entire `attestationObject` with a private key that is stored in the authenticator when it is manufactured.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAttestationResponse/attestationObject)
	**/
	final attestationObject : js.lib.ArrayBuffer;
	/**
		The **`getAuthenticatorData()`** method of the AuthenticatorAttestationResponse interface returns an ArrayBuffer containing the authenticator data contained within the AuthenticatorAttestationResponse.attestationObject property.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAttestationResponse/getAuthenticatorData)
	**/
	function getAuthenticatorData():js.lib.ArrayBuffer;
	/**
		The **`getPublicKey()`** method of the AuthenticatorAttestationResponse interface returns an ArrayBuffer containing the DER `SubjectPublicKeyInfo` of the new credential (see Subject Public Key Info), or `null` if this is not available.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAttestationResponse/getPublicKey)
	**/
	function getPublicKey():Null<js.lib.ArrayBuffer>;
	/**
		The **`getPublicKeyAlgorithm()`** method of the AuthenticatorAttestationResponse interface returns a number that is equal to a COSE Algorithm Identifier, representing the cryptographic algorithm used for the new credential.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAttestationResponse/getPublicKeyAlgorithm)
	**/
	function getPublicKeyAlgorithm():Float;
	/**
		The **`getTransports()`** method of the AuthenticatorAttestationResponse interface returns an array of strings describing the different transports which may be used by the authenticator.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAttestationResponse/getTransports)
	**/
	function getTransports():Array<String>;
	/**
		The **`clientDataJSON`** property of the AuthenticatorResponse interface stores a JSON string in an An ArrayBuffer.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorResponse/clientDataJSON)
	**/
	final clientDataJSON : js.lib.ArrayBuffer;
	static var prototype : AuthenticatorAttestationResponse;
}