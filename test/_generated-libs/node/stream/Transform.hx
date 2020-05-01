package node.stream;
@:jsRequire("stream", "Transform") extern class Transform extends Duplex {
	function new(?opts:TransformOptions);
	function _transform(chunk:Dynamic, encoding:String, callback:(?error:ts.lib.IError, ?data:Dynamic) -> Void):Void;
	function _flush(callback:(?error:ts.lib.IError, ?data:Dynamic) -> Void):Void;
}