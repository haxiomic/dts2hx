package node.fs;
@:jsRequire("fs", "Stats") extern class Stats {
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
	var atime : ts.lib.IDate;
	var mtime : ts.lib.IDate;
	var ctime : ts.lib.IDate;
	var birthtime : ts.lib.IDate;
}