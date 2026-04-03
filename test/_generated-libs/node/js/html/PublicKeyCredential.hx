package js.html;

/**
	The **`PublicKeyCredential`** interface provides information about a public key / private key pair, which is a credential for logging in to a service using an un-phishable and data-breach resistant asymmetric key pair instead of a password.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential)
**/
@:native("PublicKeyCredential") extern class PublicKeyCredential {
	function new();
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
	static var prototype : PublicKeyCredential;
	/**
		The **`getClientCapabilities()`** static method of the PublicKeyCredential interface returns a Promise that resolves with an object that can be used to check whether or not particular WebAuthn client capabilities and extensions are supported.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/getClientCapabilities_static)
	**/
	static function getClientCapabilities():js.lib.Promise<haxe.DynamicAccess<Bool>>;
	/**
		The **`isConditionalMediationAvailable()`** static method of the PublicKeyCredential interface returns a Promise which resolves to `true` if conditional mediation is available.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/isConditionalMediationAvailable_static)
	**/
	static function isConditionalMediationAvailable():js.lib.Promise<Bool>;
	/**
		The **`isUserVerifyingPlatformAuthenticatorAvailable()`** static method of the PublicKeyCredential interface returns a Promise which resolves to `true` if a user-verifying platform authenticator is present.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/isUserVerifyingPlatformAuthenticatorAvailable_static)
	**/
	static function isUserVerifyingPlatformAuthenticatorAvailable():js.lib.Promise<Bool>;
	/**
		The **`parseCreationOptionsFromJSON()`** static method of the PublicKeyCredential interface creates a PublicKeyCredentialCreationOptions object from a JSON representation of its properties.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/parseCreationOptionsFromJSON_static)
	**/
	static function parseCreationOptionsFromJSON(options:PublicKeyCredentialCreationOptionsJSON):PublicKeyCredentialCreationOptions;
	/**
		The **`parseRequestOptionsFromJSON()`** static method of the PublicKeyCredential interface converts a JSON type representation into a PublicKeyCredentialRequestOptions instance.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/parseRequestOptionsFromJSON_static)
	**/
	static function parseRequestOptionsFromJSON(options:PublicKeyCredentialRequestOptionsJSON):PublicKeyCredentialRequestOptions;
}