package ts.html;
typedef PublicKeyCredentialDescriptor = {
	var id : BufferSource;
	@:optional
	var transports : Array<AuthenticatorTransport>;
	var type : String;
};