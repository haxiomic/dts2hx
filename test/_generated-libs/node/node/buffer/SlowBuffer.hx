package node.buffer;

@:jsRequire("buffer", "SlowBuffer") extern class SlowBuffer {
	function new(size:Float);
	static var prototype : global.Buffer;
}