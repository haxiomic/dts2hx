package node.tty;
@:jsRequire("tty", "ReadStream") extern class ReadStream extends node.net.Socket {
	var isRaw : Bool;
	function setRawMode(mode:Bool):Void;
	var isTTY : Bool;
}