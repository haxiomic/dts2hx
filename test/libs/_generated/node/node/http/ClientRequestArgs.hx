package node.http;
extern interface ClientRequestArgs {
	@:optional
	var protocol : Null<String>;
	@:optional
	var host : Null<String>;
	@:optional
	var hostname : Null<String>;
	@:optional
	var family : Null<Float>;
	@:optional
	var port : Null<haxe.extern.EitherType<String, Float>>;
	@:optional
	var defaultPort : Null<haxe.extern.EitherType<String, Float>>;
	@:optional
	var localAddress : Null<String>;
	@:optional
	var socketPath : Null<String>;
	@:optional
	var method : Null<String>;
	@:optional
	var path : Null<String>;
	@:optional
	var headers : Null<OutgoingHttpHeaders>;
	@:optional
	var auth : Null<String>;
	@:optional
	var agent : Null<haxe.extern.EitherType<Bool, Agent>>;
	@:optional
	var _defaultAgent : Null<Agent>;
	@:optional
	var timeout : Null<Float>;
	@:optional
	var setHost : Null<Bool>;
	@:optional
	var createConnection : Null<(options:ClientRequestArgs, oncreate:(err:js.lib.Error, socket:node.net.Socket) -> Void) -> node.net.Socket>;
}