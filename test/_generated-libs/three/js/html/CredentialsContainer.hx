package js.html;
@:native("CredentialsContainer") @tsInterface extern class CredentialsContainer {
	function new();
	function create(?options:CredentialCreationOptions):js.lib.Promise<Null<Credential>>;
	function get(?options:CredentialRequestOptions):js.lib.Promise<Null<Credential>>;
	function preventSilentAccess():js.lib.Promise<Void>;
	function store(credential:Credential):js.lib.Promise<Credential>;
	static var prototype : CredentialsContainer;
}