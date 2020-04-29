package js.html;
extern typedef ICredentialsContainer = {
	function create(?options:CredentialCreationOptions):js.lib.IPromise<Null<ICredential>>;
	function get(?options:CredentialRequestOptions):js.lib.IPromise<Null<ICredential>>;
	function preventSilentAccess():js.lib.IPromise<Void>;
	function store(credential:ICredential):js.lib.IPromise<ICredential>;
};