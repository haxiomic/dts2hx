package node.stream;
@:jsRequire("stream", "Readable") extern class Readable extends Stream {
	function new(?opts:ReadableOptions);
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function setEncoding(encoding:String):Readable;
	function pause():Readable;
	function resume():Readable;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):Readable;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Readable;
	function push(chunk:Any, ?encoding:String):Bool;
	function _destroy(error:Null<ts.lib.IError>, callback:(?error:ts.lib.IError) -> Void):Void;
	function destroy(?error:ts.lib.IError):Void;
}