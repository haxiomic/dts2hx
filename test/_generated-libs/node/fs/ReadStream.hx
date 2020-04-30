package node.fs;
@:jsRequire("fs", "ReadStream") extern class ReadStream extends node.stream.Readable {
	function close():Void;
	var bytesRead : Float;
	var path : haxe.extern.EitherType<String, global.IBuffer>;
}