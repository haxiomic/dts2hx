package node.http2;
@:jsRequire("http2", "Http2ServerRequest") extern class Http2ServerRequest extends node.stream.Readable {
	function new();
	var headers : IncomingHttpHeaders;
	var httpVersion : String;
	var method : String;
	var rawHeaders : std.Array<String>;
	var rawTrailers : std.Array<String>;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	var socket : haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>;
	var stream : ServerHttp2Stream;
	var trailers : IncomingHttpHeaders;
	var url : String;
}