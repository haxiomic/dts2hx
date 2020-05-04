package ts.lib;
@:native("URLSearchParams") extern class URLSearchParams {
	function new(?init:ts.AnyOf4<String, IURLSearchParams, { }, Array<Array<String>>>);
	/**
		Appends a specified key/value pair as a new search parameter.
	**/
	function append(name:String, value:String):Void;
	/**
		Deletes the given search parameter, and its associated value, from the list of all search parameters.
	**/
	function delete(name:String):Void;
	/**
		Returns the first value associated to the given search parameter.
	**/
	function get(name:String):Null<String>;
	/**
		Returns all the values association with a given search parameter.
	**/
	function getAll(name:String):Array<String>;
	/**
		Returns a Boolean indicating if such a search parameter exists.
	**/
	function has(name:String):Bool;
	/**
		Sets the value associated to a given search parameter to the given value. If there were several values, delete the others.
	**/
	function set(name:String, value:String):Void;
	function sort():Void;
	function forEach(callbackfn:(value:String, key:String, parent:IURLSearchParams) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an array of key, value pairs for every entry in the search params.
	**/
	function entries():IterableIterator<ts.Tuple2<String, String>>;
	/**
		Returns a list of keys in the search params.
	**/
	function keys():IterableIterator<String>;
	/**
		Returns a list of values in the search params.
	**/
	function values():IterableIterator<String>;
	static var prototype : IURLSearchParams;
}