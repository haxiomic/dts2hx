package js.html;

/**
	The **`CredentialsContainer`** interface of the Credential Management API exposes methods to request credentials and notify the user agent when events such as successful sign in or sign out happen.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CredentialsContainer)
**/
typedef ICredentialsContainer = {
	/**
		The **`create()`** method of the CredentialsContainer interface creates a new credential, which can then be stored and later retrieved using the CredentialsContainer.get method.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/create)
	**/
	function create(?options:CredentialCreationOptions):js.lib.Promise<Null<Credential>>;
	/**
		The **`get()`** method of the CredentialsContainer interface returns a Promise that fulfills with a single credential, which can then be used to authenticate a user to a website.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/get)
	**/
	function get(?options:CredentialRequestOptions):js.lib.Promise<Null<Credential>>;
	/**
		The **`preventSilentAccess()`** method of the CredentialsContainer interface sets a flag that specifies whether automatic log in is allowed for future visits to the current origin, then returns a Promise that resolves to `undefined`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/preventSilentAccess)
	**/
	function preventSilentAccess():js.lib.Promise<ts.Undefined>;
	/**
		The **`store()`** method of the ```js-nolint store(credentials) ``` - `credentials` - : A valid Credential instance.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CredentialsContainer/store)
	**/
	function store(credential:Credential):js.lib.Promise<ts.Undefined>;
};