package ts.html;
typedef PublicKeyCredentialDescriptor = {
	var id : BufferSource;
	@:optional
	var transports : std.Array<AuthenticatorTransport>;
	var type : String;
};