package node.https;
extern interface AgentOptions extends node.http.AgentOptions extends node.tls.ConnectionOptions {
	@:optional
	var rejectUnauthorized : Bool;
	@:optional
	var maxCachedSessions : Float;
}