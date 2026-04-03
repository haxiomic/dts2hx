package js.html;

/**
	The **`PublicKeyCredential`** interface provides information about a public key / private key pair, which is a credential for logging in to a service using an un-phishable and data-breach resistant asymmetric key pair instead of a password.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential)
**/
typedef IPublicKeyCredential = {
	/**
		The **`authenticatorAttachment`** read-only property of the PublicKeyCredential interface is a string that indicates the general category of authenticator used during the associated CredentialsContainer.create() or CredentialsContainer.get() call.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/authenticatorAttachment)
	**/
	final authenticatorAttachment : Null<String>;
	/**
		The **`rawId`** read-only property of the containing the identifier of the credentials.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/rawId)
	**/
	final rawId : js.lib.ArrayBuffer;
	/**
		The **`response`** read-only property of the object which is sent from the authenticator to the user agent for the creation/fetching of credentials.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/response)
	**/
	final response : AuthenticatorResponse;
	/**
		The **`getClientExtensionResults()`** method of the PublicKeyCredential interface returns a map between the identifiers of extensions requested during credential creation or authentication, and their results after processing by the user agent.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/getClientExtensionResults)
	**/
	function getClientExtensionResults():AuthenticationExtensionsClientOutputs;
	/**
		The **`toJSON()`** method of the PublicKeyCredential interface returns a JSON type representation of a PublicKeyCredential.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/toJSON)
	**/
	function toJSON():Dynamic;
	/**
		The **`id`** read-only property of the Credential interface returns a string containing the credential's identifier.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Credential/id)
	**/
	final id : String;
	/**
		The **`type`** read-only property of the Credential interface returns a string containing the credential's type.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Credential/type)
	**/
	final type : String;
};