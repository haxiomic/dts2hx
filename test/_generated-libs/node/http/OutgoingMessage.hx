package node.http;
@:jsRequire("http", "OutgoingMessage") extern class OutgoingMessage extends node.stream.Writable {
	function new();
	var upgrading : Bool;
	var chunkedEncoding : Bool;
	var shouldKeepAlive : Bool;
	var useChunkedEncodingByDefault : Bool;
	var sendDate : Bool;
	var finished : Bool;
	var headersSent : Bool;
	var connection : node.net.Socket;
	function setTimeout(msecs:Float, ?callback:() -> Void):OutgoingMessage;
	function setHeader(name:String, value:ts.AnyOf3<String, Float, std.Array<String>>):Void;
	function getHeader(name:String):Null<ts.AnyOf3<String, Float, std.Array<String>>>;
	function getHeaders():OutgoingHttpHeaders;
	function getHeaderNames():std.Array<String>;
	function hasHeader(name:String):Bool;
	function removeHeader(name:String):Void;
	function addTrailers(headers:ts.AnyOf2<OutgoingHttpHeaders, std.Array<ts.Tuple2<String, String>>>):Void;
	function flushHeaders():Void;
}