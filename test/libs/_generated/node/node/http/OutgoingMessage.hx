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
	function setHeader(name:String, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, std.Array<String>>>):Void;
	function getHeader(name:String):Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, std.Array<String>>>>;
	function getHeaders():OutgoingHttpHeaders;
	function getHeaderNames():std.Array<String>;
	function hasHeader(name:String):Bool;
	function removeHeader(name:String):Void;
	function addTrailers(headers:haxe.extern.EitherType<OutgoingHttpHeaders, std.Array<js.lib.Tuple2<String, String, String>>>):Void;
	function flushHeaders():Void;
}