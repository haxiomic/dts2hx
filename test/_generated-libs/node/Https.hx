package node;
@:jsRequire("https") @valueModuleOnly extern class Https {
	static function createServer(options:Any, ?requestListener:(req:node.http.IncomingMessage, res:node.http.ServerResponse) -> Void):node.https.Server;
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.http.RequestOptions & node.tls.SecureContextOptions & { @:optional var rejectUnauthorized : Bool; @:optional var servername : String; }, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function request(options:ts.AnyOf3<String, node.url.URL, node.http.RequestOptions & node.tls.SecureContextOptions & { @:optional var rejectUnauthorized : Bool; @:optional var servername : String; }>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.http.RequestOptions & node.tls.SecureContextOptions & { @:optional var rejectUnauthorized : Bool; @:optional var servername : String; }, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function get(options:ts.AnyOf3<String, node.url.URL, node.http.RequestOptions & node.tls.SecureContextOptions & { @:optional var rejectUnauthorized : Bool; @:optional var servername : String; }>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	static var globalAgent : node.https.Agent;
}