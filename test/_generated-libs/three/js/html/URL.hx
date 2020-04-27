package js.html;
/**
	The URL interface represents an object providing static methods used for creating object URLs.
**/
@:native("URL") @tsInterface extern class URL {
	function new(url:String, ?base:haxe.extern.EitherType<String, URL>);
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
	final searchParams : js.lib.URLSearchParams;
	var username : String;
	function toJSON():String;
	static var prototype : URL;
	static function createObjectURL(object:Any):String;
	static function revokeObjectURL(url:String):Void;
}