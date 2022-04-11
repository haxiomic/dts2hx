package node;

@:jsRequire("http") @valueModuleOnly extern class Http {
	@:overload(function(options:node.http.ServerOptions, ?requestListener:node.http.RequestListener):node.http.Server { })
	static function createServer(?requestListener:node.http.RequestListener):node.http.Server;
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.http.RequestOptions, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function request(options:ts.AnyOf3<String, node.url.URL, node.http.RequestOptions>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	@:overload(function(url:ts.AnyOf2<String, node.url.URL>, options:node.http.RequestOptions, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest { })
	static function get(options:ts.AnyOf3<String, node.url.URL, node.http.RequestOptions>, ?callback:(res:node.http.IncomingMessage) -> Void):node.http.ClientRequest;
	static final METHODS : Array<String>;
	static final STATUS_CODES : haxe.DynamicAccess<Null<String>>;
	static var globalAgent : node.http.Agent;
	/**
		Read-only property specifying the maximum allowed size of HTTP headers in bytes.
		Defaults to 8KB. Configurable using the [`--max-http-header-size`][] CLI option.
	**/
	static final maxHeaderSize : Float;
}