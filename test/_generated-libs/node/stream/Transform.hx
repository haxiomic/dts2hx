package node.stream;
@:jsRequire("stream", "Transform") extern class Transform extends Duplex {
	function new(?opts:TransformOptions);
	function _transform(chunk:Dynamic, encoding:String, callback:TransformCallback):Void;
	function _flush(callback:TransformCallback):Void;
}