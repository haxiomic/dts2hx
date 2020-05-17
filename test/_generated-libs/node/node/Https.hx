package node;

@:jsRequire("https") @valueModuleOnly extern class Https {
	static function createServer(options:node.https.ServerOptions, ?requestListener:node.http.RequestListener):node.https.Server;
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.https.RequestOptions, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function request(options:ts.AnyOf3<String, node.url.URL, node.https.RequestOptions>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.https.RequestOptions, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function get(options:ts.AnyOf3<String, node.url.URL, node.https.RequestOptions>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	static var globalAgent : node.https.Agent;
}