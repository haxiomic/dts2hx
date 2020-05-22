package node.fs;

@:jsRequire("fs", "Dirent") extern class Dirent {
	function new();
	function isFile():Bool;
	function isDirectory():Bool;
	function isBlockDevice():Bool;
	function isCharacterDevice():Bool;
	function isSymbolicLink():Bool;
	function isFIFO():Bool;
	function isSocket():Bool;
	var name : String;
	static var prototype : Dirent;
}