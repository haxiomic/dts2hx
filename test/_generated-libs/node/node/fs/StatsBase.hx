package node.fs;

typedef StatsBase<T> = {
	function isFile():Bool;
	function isDirectory():Bool;
	function isBlockDevice():Bool;
	function isCharacterDevice():Bool;
	function isSymbolicLink():Bool;
	function isFIFO():Bool;
	function isSocket():Bool;
	var dev : T;
	var ino : T;
	var mode : T;
	var nlink : T;
	var uid : T;
	var gid : T;
	var rdev : T;
	var size : T;
	var blksize : T;
	var blocks : T;
	var atimeMs : T;
	var mtimeMs : T;
	var ctimeMs : T;
	var birthtimeMs : T;
	var atime : js.lib.Date;
	var mtime : js.lib.Date;
	var ctime : js.lib.Date;
	var birthtime : js.lib.Date;
};