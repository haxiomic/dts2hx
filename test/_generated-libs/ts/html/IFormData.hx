package ts.html;
/**
	Provides a way to easily construct a set of key/value pairs representing form fields and their values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would use if the encoding type were set to "multipart/form-data".
**/
typedef IFormData = {
	function append(name:String, value:ts.AnyOf2<String, Blob>, ?fileName:String):Void;
	function delete(name:String):Void;
	function get(name:String):Null<ts.AnyOf2<String, File>>;
	function getAll(name:String):Array<FormDataEntryValue>;
	function has(name:String):Bool;
	function set(name:String, value:ts.AnyOf2<String, Blob>, ?fileName:String):Void;
	function forEach(callbackfn:(value:FormDataEntryValue, key:String, parent:FormData) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():ts.lib.IterableIterator<ts.Tuple2<String, FormDataEntryValue>>;
	/**
		Returns a list of keys in the list.
	**/
	function keys():ts.lib.IterableIterator<String>;
	/**
		Returns a list of values in the list.
	**/
	function values():ts.lib.IterableIterator<FormDataEntryValue>;
};