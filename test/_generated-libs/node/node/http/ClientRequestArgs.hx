package node.http;

typedef ClientRequestArgs = {
	@:optional
	var protocol : String;
	@:optional
	var host : String;
	@:optional
	var hostname : String;
	@:optional
	var family : Float;
	@:optional
	var port : ts.AnyOf2<String, Float>;
	@:optional
	var defaultPort : ts.AnyOf2<String, Float>;
	@:optional
	var localAddress : String;
	@:optional
	var socketPath : String;
	@:optional
	var method : String;
	@:optional
	var path : String;
	@:optional
	var headers : OutgoingHttpHeaders;
	@:optional
	var auth : String;
	@:optional
	var agent : ts.AnyOf2<Bool, Agent>;
	@:optional
	var _defaultAgent : Agent;
	@:optional
	var timeout : Float;
	@:optional
	var setHost : Bool;
	@:optional
	dynamic function createConnection(options:ClientRequestArgs, oncreate:(err:js.lib.Error, socket:node.net.Socket) -> Void):node.net.Socket;
};