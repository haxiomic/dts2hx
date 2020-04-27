package js.lib;
/**
	Provides a way to easily construct a set of key/value pairs representing form fields and their values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would use if the encoding type were set to "multipart/form-data".
**/
@:native("FormData") @tsInterface extern class FormData {
	function new(?form:HTMLFormElement);
	function append(name:String, value:haxe.extern.EitherType<String, js.html.Blob>, ?fileName:String):Void;
	function delete(name:String):Void;
	function get(name:String):Null<haxe.extern.EitherType<String, js.html.File>>;
	function getAll(name:String):std.Array<haxe.extern.EitherType<String, js.html.File>>;
	function has(name:String):Bool;
	function set(name:String, value:haxe.extern.EitherType<String, js.html.Blob>, ?fileName:String):Void;
	function forEach(callbackfn:(value:haxe.extern.EitherType<String, js.html.File>, key:String, parent:FormData) -> Void, ?thisArg:Any):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():IterableIterator<js.lib.Tuple2<String, haxe.extern.EitherType<String, js.html.File>>>;
	/**
		Returns a list of keys in the list.
	**/
	function keys():IterableIterator<String>;
	/**
		Returns a list of values in the list.
	**/
	function values():IterableIterator<haxe.extern.EitherType<String, js.html.File>>;
	static var prototype : FormData;
}