package node.https;

@:jsRequire("https", "Agent") extern class Agent extends node.http.Agent {
	function new(?options:AgentOptions);
	var options : AgentOptions;
	static var prototype : Agent;
}