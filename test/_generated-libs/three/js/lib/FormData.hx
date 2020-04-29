package js.lib;
/**
	Provides a way to easily construct a set of key/value pairs representing form fields and their values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would use if the encoding type were set to "multipart/form-data".
**/
@:native("FormData") extern class FormData {
	function new(?form:IHTMLFormElement);
	function append(name:String, value:haxe.extern.EitherType<String, js.html.IBlob>, ?fileName:String):Void;
	function delete(name:String):Void;
	function get(name:String):Null<haxe.extern.EitherType<String, js.html.IFile>>;
	function getAll(name:String):std.Array<haxe.extern.EitherType<String, js.html.IFile>>;
	function has(name:String):Bool;
	function set(name:String, value:haxe.extern.EitherType<String, js.html.IBlob>, ?fileName:String):Void;
	function forEach(callbackfn:(value:haxe.extern.EitherType<String, js.html.IFile>, key:String, parent:IFormData) -> Void, ?thisArg:Any):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():IterableIterator<js.lib.Tuple2<String, haxe.extern.EitherType<String, js.html.IFile>>>;
	/**
		Returns a list of keys in the list.
	**/
	function keys():IterableIterator<String>;
	/**
		Returns a list of values in the list.
	**/
	function values():IterableIterator<haxe.extern.EitherType<String, js.html.IFile>>;
	static var prototype : IFormData;
}