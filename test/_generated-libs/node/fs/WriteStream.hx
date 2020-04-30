package node.fs;
@:jsRequire("fs", "WriteStream") extern class WriteStream extends node.stream.Writable {
	function close():Void;
	var bytesWritten : Float;
	var path : haxe.extern.EitherType<String, global.IBuffer>;
}