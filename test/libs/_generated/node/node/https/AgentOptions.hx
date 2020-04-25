package node.https;
extern interface AgentOptions extends node.http.AgentOptions extends node.tls.ConnectionOptions {
	@:optional
	var rejectUnauthorized : Null<Bool>;
	@:optional
	var maxCachedSessions : Null<Float>;
}