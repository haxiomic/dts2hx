package js.html;

typedef PublicKeyCredentialDescriptor = {
	var id : js.lib.BufferSource;
	@:optional
	var transports : Array<AuthenticatorTransport>;
	var type : String;
};