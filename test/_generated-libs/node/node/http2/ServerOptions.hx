package node.http2;
extern typedef ServerOptions = SessionOptions & { @:optional
	var allowHTTP1 : Bool; };