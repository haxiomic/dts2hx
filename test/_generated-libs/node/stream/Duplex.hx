package node.stream;
@:jsRequire("stream", "Duplex") extern class Duplex extends Readable {
	function new(?opts:DuplexOptions);
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Dynamic, encoding:String, callback:ts.AnyOf2<() -> Void, (error:ts.lib.IError) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : String; }>, callback:ts.AnyOf2<() -> Void, (error:ts.lib.IError) -> Void>):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:ts.lib.IError) -> Void>):Void;
	@:overload(function(chunk:Dynamic, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool { })
	function write(chunk:Dynamic, ?encoding:String, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):Duplex;
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Dynamic, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
}