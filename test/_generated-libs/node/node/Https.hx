package node;
@:jsRequire("https") extern class Https {
	static function createServer(options:Any, ?requestListener:(req:node.http.IncomingMessage, res:node.http.ServerResponse) -> Void):node.https.Server;
	@:overload(function(url:haxe.extern.EitherType<String, node.url.URL>, options:Any, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function request(options:haxe.extern.EitherType<String, haxe.extern.EitherType<node.url.URL, Any>>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	@:overload(function(url:haxe.extern.EitherType<String, node.url.URL>, options:Any, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function get(options:haxe.extern.EitherType<String, haxe.extern.EitherType<node.url.URL, Any>>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	static var globalAgent : node.https.Agent;
}