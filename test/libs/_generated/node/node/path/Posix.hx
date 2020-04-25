package node.path;
@:jsRequire("path", "posix") extern class Posix {
	static function normalize(p:String):String;
	static function join(paths:std.Array<String>):String;
	static function resolve(pathSegments:std.Array<String>):String;
	static function isAbsolute(p:String):Bool;
	static function relative(from:String, to:String):String;
	static function dirname(p:String):String;
	static function basename(p:String, ?ext:String):String;
	static function extname(p:String):String;
	static function parse(p:String):ParsedPath;
	static function format(pP:FormatInputPathObject):String;
	static var sep : String;
	static var delimiter : String;
}