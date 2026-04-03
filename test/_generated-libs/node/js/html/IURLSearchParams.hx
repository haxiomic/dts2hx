package js.html;

/**
	The **`URLSearchParams`** interface defines utility methods to work with the query string of a URL.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
	
	`URLSearchParams` class is a global reference for `import { URLSearchParams } from 'node:url'`
	https://nodejs.org/api/url.html#class-urlsearchparams
**/
typedef IURLSearchParams = {
	/**
		The **`size`** read-only property of the URLSearchParams interface indicates the total number of search parameter entries.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams/size)
	**/
	final size : Float;
	/**
		The **`append()`** method of the URLSearchParams interface appends a specified key/value pair as a new search parameter.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams/append)
	**/
	function append(name:String, value:String):Void;
	/**
		The **`delete()`** method of the URLSearchParams interface deletes specified parameters and their associated value(s) from the list of all search parameters.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams/delete)
	**/
	function delete(name:String, ?value:String):Void;
	/**
		The **`get()`** method of the URLSearchParams interface returns the first value associated to the given search parameter.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams/get)
	**/
	function get(name:String):Null<String>;
	/**
		The **`getAll()`** method of the URLSearchParams interface returns all the values associated with a given search parameter as an array.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams/getAll)
	**/
	function getAll(name:String):Array<String>;
	/**
		The **`has()`** method of the URLSearchParams interface returns a boolean value that indicates whether the specified parameter is in the search parameters.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams/has)
	**/
	function has(name:String, ?value:String):Bool;
	/**
		The **`set()`** method of the URLSearchParams interface sets the value associated with a given search parameter to the given value.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams/set)
	**/
	function set(name:String, value:String):Void;
	/**
		The **`URLSearchParams.sort()`** method sorts all key/value pairs contained in this object in place and returns `undefined`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams/sort)
	**/
	function sort():Void;
	function toString():String;
	function forEach(callbackfn:(value:String, key:String, parent:js.html.URLSearchParams) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an array of key, value pairs for every entry in the search params.
	**/
	function entries():js.lib.URLSearchParamsIterator_<ts.Tuple2<String, String>>;
	/**
		Returns a list of keys in the search params.
	**/
	function keys():js.lib.URLSearchParamsIterator_<String>;
	/**
		Returns a list of values in the search params.
	**/
	function values():js.lib.URLSearchParamsIterator_<String>;
};