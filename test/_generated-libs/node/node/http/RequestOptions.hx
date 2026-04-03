package node.http;

typedef RequestOptions = {
	@:optional
	var _defaultAgent : Agent;
	@:optional
	var agent : ts.AnyOf2<Bool, Agent>;
	@:optional
	var auth : String;
	@:optional
	dynamic function createConnection(options:ClientRequestArgs, oncreate:(err:Null<js.lib.Error>, socket:node.stream.stream.Duplex) -> Void):Null<node.stream.stream.Duplex>;
	@:optional
	var defaultPort : ts.AnyOf2<String, Float>;
	@:optional
	var family : Float;
	@:optional
	var headers : ts.AnyOf2<haxe.ds.ReadOnlyArray<String>, OutgoingHttpHeaders>;
	@:optional
	var host : String;
	@:optional
	var hostname : String;
	@:optional
	var insecureHTTPParser : Bool;
	@:optional
	var localAddress : String;
	@:optional
	var localPort : Float;
	@:optional
	dynamic function lookup(hostname:String, options:node.dns.LookupOptions, callback:ts.AnyOf2<(err:Null<global.nodejs.ErrnoException>, address:ts.AnyOf2<String, Array<node.dns.LookupAddress>>) -> Void, (err:Null<global.nodejs.ErrnoException>, address:ts.AnyOf2<String, Array<node.dns.LookupAddress>>, family:Float) -> Void>):Void;
	@:optional
	var maxHeaderSize : Float;
	@:optional
	var method : String;
	@:optional
	var path : String;
	@:optional
	var port : ts.AnyOf2<String, Float>;
	@:optional
	var protocol : String;
	@:optional
	var setHost : Bool;
	@:optional
	var signal : js.html.AbortSignal;
	@:optional
	var socketPath : String;
	@:optional
	var timeout : Float;
	@:optional
	var uniqueHeaders : Array<ts.AnyOf2<String, Array<String>>>;
	@:optional
	var joinDuplicateHeaders : Bool;
	/**
		One or more [supported `getaddrinfo`](https://nodejs.org/docs/latest-v20.x/api/dns.html#supported-getaddrinfo-flags) flags. Multiple flags may be
		passed by bitwise `OR`ing their values.
	**/
	@:optional
	var hints : Float;
};