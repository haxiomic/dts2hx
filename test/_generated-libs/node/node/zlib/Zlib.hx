package node.zlib;
extern interface Zlib {
	final bytesRead : Float;
	final bytesWritten : Float;
	@:optional
	var shell : haxe.extern.EitherType<String, Bool>;
	function close(?callback:() -> Void):Void;
	function flush(?kind:haxe.extern.EitherType<Float, () -> Void>, ?callback:() -> Void):Void;
}