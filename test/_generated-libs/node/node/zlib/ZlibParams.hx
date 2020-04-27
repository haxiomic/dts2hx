package node.zlib;
extern interface ZlibParams {
	function params(level:Float, strategy:Float, callback:() -> Void):Void;
}