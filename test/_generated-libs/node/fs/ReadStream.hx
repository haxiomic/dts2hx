package node.fs;
@:jsRequire("fs", "ReadStream") extern class ReadStream extends node.stream.Readable {
	function close():Void;
	var bytesRead : Float;
	var path : ts.AnyOf2<String, global.IBuffer>;
}