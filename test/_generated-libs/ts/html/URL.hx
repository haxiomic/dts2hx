package ts.html;
/**
	The URL interface represents an object providing static methods used for creating object URLs.
**/
@:native("URL") extern class URL {
	function new(url:String, ?base:ts.AnyOf2<String, IURL>);
	var hash : String;
	var host : String;
	var hostname : String;
	var href : String;
	final origin : String;
	var password : String;
	var pathname : String;
	var port : String;
	var protocol : String;
	var search : String;
	final searchParams : ts.lib.IURLSearchParams;
	var username : String;
	function toJSON():String;
	static var prototype : IURL;
	static function createObjectURL(object:Any):String;
	static function revokeObjectURL(url:String):Void;
}