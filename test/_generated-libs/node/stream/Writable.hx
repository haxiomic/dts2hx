package node.stream;
@:jsRequire("stream", "Writable") extern class Writable extends Stream {
	function new(?opts:WritableOptions);
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:ts.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:ts.lib.IError) -> Void):Void;
	function _destroy(error:Null<ts.lib.IError>, callback:(?error:ts.lib.IError) -> Void):Void;
	function _final(callback:(?error:ts.lib.IError) -> Void):Void;
	@:overload(function(chunk:Any, ?encoding:String, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool { })
	function write(chunk:Any, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):Writable;
	@:overload(function(chunk:Any, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Any, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	function destroy(?error:ts.lib.IError):Void;
}