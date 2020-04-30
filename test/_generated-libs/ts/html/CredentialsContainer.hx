package ts.html;
@:native("CredentialsContainer") extern class CredentialsContainer {
	function new();
	function create(?options:CredentialCreationOptions):ts.lib.IPromise<Null<ICredential>>;
	function get(?options:CredentialRequestOptions):ts.lib.IPromise<Null<ICredential>>;
	function preventSilentAccess():ts.lib.IPromise<Void>;
	function store(credential:ICredential):ts.lib.IPromise<ICredential>;
	static var prototype : ICredentialsContainer;
}