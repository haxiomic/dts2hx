package node.http2;
extern interface SecureServerOptions extends SecureServerSessionOptions {
	@:optional
	var allowHTTP1 : Null<Bool>;
}