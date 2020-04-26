package node.http2;
extern interface ServerOptions extends SessionOptions {
	@:optional
	var allowHTTP1 : Bool;
}