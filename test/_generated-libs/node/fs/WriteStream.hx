package node.fs;
@:jsRequire("fs", "WriteStream") extern class WriteStream extends node.stream.Writable {
	function close():Void;
	var bytesWritten : Float;
	var path : ts.AnyOf2<String, global.IBuffer>;
}