package node.tty;
@:jsRequire("tty", "WriteStream") extern class WriteStream extends node.net.Socket {
	function clearLine(dir:Int):Void;
	function clearScreenDown():Void;
	function cursorTo(x:Float, y:Float):Void;
	function getColorDepth(?env:{ }):Float;
	function getWindowSize():ts.lib.Tuple2<Float, Float>;
	var columns : Float;
	var rows : Float;
	var isTTY : Bool;
}