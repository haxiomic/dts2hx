package ts.html;
/**
	The URL interface represents an object providing static methods used for creating object URLs.
**/
@:native("URL") extern class URL {
	function new(url:String, ?base:ts.AnyOf2<String, URL>);
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
	final searchParams : URLSearchParams;
	var username : String;
	function toJSON():String;
	static var prototype : URL;
	static function createObjectURL(object:Dynamic):String;
	static function revokeObjectURL(url:String):Void;
}