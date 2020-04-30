package node.http2;
@:jsRequire("http2", "Http2ServerResponse") extern class Http2ServerResponse extends node.stream.Stream {
	function new();
	function addTrailers(trailers:node.http.OutgoingHttpHeaders):Void;
	var connection : haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>;
	@:overload(function(?data:haxe.extern.EitherType<String, global.IBuffer>, ?callback:() -> Void):Void { })
	@:overload(function(?data:haxe.extern.EitherType<String, global.IBuffer>, ?encoding:String, ?callback:() -> Void):Void { })
	function end(?callback:() -> Void):Void;
	final finished : Bool;
	function getHeader(name:String):String;
	function getHeaderNames():std.Array<String>;
	function getHeaders():node.http.OutgoingHttpHeaders;
	function hasHeader(name:String):Bool;
	final headersSent : Bool;
	function removeHeader(name:String):Void;
	var sendDate : Bool;
	function setHeader(name:String, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, std.Array<String>>>):Void;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	var socket : haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>;
	var statusCode : Float;
	var statusMessage : String;
	var stream : ServerHttp2Stream;
	@:overload(function(chunk:haxe.extern.EitherType<String, global.IBuffer>, ?encoding:String, ?callback:(err:ts.lib.IError) -> Void):Bool { })
	function write(chunk:haxe.extern.EitherType<String, global.IBuffer>, ?callback:(err:ts.lib.IError) -> Void):Bool;
	function writeContinue():Void;
	@:overload(function(statusCode:Float, ?statusMessage:String, ?headers:node.http.OutgoingHttpHeaders):Http2ServerResponse { })
	function writeHead(statusCode:Float, ?headers:node.http.OutgoingHttpHeaders):Http2ServerResponse;
	function createPushResponse(headers:node.http.OutgoingHttpHeaders, callback:(err:Null<ts.lib.IError>, res:Http2ServerResponse) -> Void):Void;
}