package js.html;

/**
	The **`NavigatorLogin`** interface of the Federated Credential Management (FedCM) API defines login functionality for federated identity providers (IdPs).
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigatorLogin)
**/
typedef INavigatorLogin = {
	/**
		The **`setStatus()`** method of the NavigatorLogin interface sets the login status of a federated identity provider (IdP), when called from the IdP's origin.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigatorLogin/setStatus)
	**/
	function setStatus(status:LoginStatus):js.lib.Promise<ts.Undefined>;
};