package js.html;

/**
	The **`Headers`** interface of the Fetch API allows you to perform various actions on HTTP request and response headers.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Headers)
**/
typedef IHeaders = {
	/**
		The **`append()`** method of the Headers interface appends a new value onto an existing header inside a `Headers` object, or adds the header if it does not already exist.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Headers/append)
	**/
	function append(name:String, value:String):Void;
	/**
		The **`delete()`** method of the Headers interface deletes a header from the current `Headers` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Headers/delete)
	**/
	function delete(name:String):Void;
	/**
		The **`get()`** method of the Headers interface returns a byte string of all the values of a header within a `Headers` object with a given name.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Headers/get)
	**/
	function get(name:String):Null<String>;
	/**
		The **`getSetCookie()`** method of the Headers interface returns an array containing the values of all Set-Cookie headers associated with a response.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Headers/getSetCookie)
	**/
	function getSetCookie():Array<String>;
	/**
		The **`has()`** method of the Headers interface returns a boolean stating whether a `Headers` object contains a certain header.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Headers/has)
	**/
	function has(name:String):Bool;
	/**
		The **`set()`** method of the Headers interface sets a new value for an existing header inside a `Headers` object, or adds the header if it does not already exist.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Headers/set)
	**/
	function set(name:String, value:String):Void;
	function forEach(callbackfn:(value:String, key:String, parent:js.html.Headers) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an iterator allowing to go through all key/value pairs contained in this object.
	**/
	function entries():js.lib.HeadersIterator_<ts.Tuple2<String, String>>;
	/**
		Returns an iterator allowing to go through all keys of the key/value pairs contained in this object.
	**/
	function keys():js.lib.HeadersIterator_<String>;
	/**
		Returns an iterator allowing to go through all values of the key/value pairs contained in this object.
	**/
	function values():js.lib.HeadersIterator_<String>;
};