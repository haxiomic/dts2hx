package node.fs;

@:jsRequire("fs", "Stats") extern class Stats {
	function new();
	function isFile():Bool;
	function isDirectory():Bool;
	function isBlockDevice():Bool;
	function isCharacterDevice():Bool;
	function isSymbolicLink():Bool;
	function isFIFO():Bool;
	function isSocket():Bool;
	var dev : Float;
	var ino : Float;
	var mode : Float;
	var nlink : Float;
	var uid : Float;
	var gid : Float;
	var rdev : Float;
	var size : Float;
	var blksize : Float;
	var blocks : Float;
	var atimeMs : Float;
	var mtimeMs : Float;
	var ctimeMs : Float;
	var birthtimeMs : Float;
	var atime : js.lib.Date;
	var mtime : js.lib.Date;
	var ctime : js.lib.Date;
	var birthtime : js.lib.Date;
	static var prototype : Stats;
}