package node.http2;
extern typedef SecureServerOptions = SecureServerSessionOptions & { @:optional
	var allowHTTP1 : Bool; };