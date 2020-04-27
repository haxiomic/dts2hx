package node.https;
extern typedef AgentOptions = node.http.AgentOptions & node.tls.ConnectionOptions & { @:optional
	var rejectUnauthorized : Bool; @:optional
	var maxCachedSessions : Float; };