package js.html;

/**
	The **`AuthenticatorAssertionResponse`** interface of the Web Authentication API contains a digital signature from the private key of a particular WebAuthn credential.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAssertionResponse)
**/
@:native("AuthenticatorAssertionResponse") extern class AuthenticatorAssertionResponse {
	function new();
	/**
		The **`authenticatorData`** property of the AuthenticatorAssertionResponse interface returns an ArrayBuffer containing information from the authenticator such as the Relying Party ID Hash (rpIdHash), a signature counter, test of user presence, user verification flags, and any extensions processed by the authenticator.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAssertionResponse/authenticatorData)
	**/
	final authenticatorData : js.lib.ArrayBuffer;
	/**
		The **`signature`** read-only property of the object which is the signature of the authenticator for both the client data (AuthenticatorResponse.clientDataJSON).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAssertionResponse/signature)
	**/
	final signature : js.lib.ArrayBuffer;
	/**
		The **`userHandle`** read-only property of the AuthenticatorAssertionResponse interface is an ArrayBuffer object providing an opaque identifier for the given user.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAssertionResponse/userHandle)
	**/
	final userHandle : Null<js.lib.ArrayBuffer>;
	/**
		The **`clientDataJSON`** property of the AuthenticatorResponse interface stores a JSON string in an An ArrayBuffer.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorResponse/clientDataJSON)
	**/
	final clientDataJSON : js.lib.ArrayBuffer;
	static var prototype : AuthenticatorAssertionResponse;
}