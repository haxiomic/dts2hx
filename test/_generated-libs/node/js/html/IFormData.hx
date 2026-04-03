package js.html;

/**
	The **`FormData`** interface provides a way to construct a set of key/value pairs representing form fields and their values, which can be sent using the Window/fetch, XMLHttpRequest.send() or navigator.sendBeacon() methods.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/FormData)
**/
typedef IFormData = {
	/**
		The **`append()`** method of the FormData interface appends a new value onto an existing key inside a `FormData` object, or adds the key if it does not already exist.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FormData/append)
	**/
	@:overload(function(name:String, value:String):Void { })
	@:overload(function(name:String, blobValue:js.html.Blob, ?filename:String):Void { })
	function append(name:String, value:ts.AnyOf2<String, js.html.Blob>):Void;
	/**
		The **`delete()`** method of the FormData interface deletes a key and its value(s) from a `FormData` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FormData/delete)
	**/
	function delete(name:String):Void;
	/**
		The **`get()`** method of the FormData interface returns the first value associated with a given key from within a `FormData` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FormData/get)
	**/
	function get(name:String):Null<FormDataEntryValue>;
	/**
		The **`getAll()`** method of the FormData interface returns all the values associated with a given key from within a `FormData` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FormData/getAll)
	**/
	function getAll(name:String):Array<FormDataEntryValue>;
	/**
		The **`has()`** method of the FormData interface returns whether a `FormData` object contains a certain key.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FormData/has)
	**/
	function has(name:String):Bool;
	/**
		The **`set()`** method of the FormData interface sets a new value for an existing key inside a `FormData` object, or adds the key/value if it does not already exist.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FormData/set)
	**/
	@:overload(function(name:String, value:String):Void { })
	@:overload(function(name:String, blobValue:js.html.Blob, ?filename:String):Void { })
	function set(name:String, value:ts.AnyOf2<String, js.html.Blob>):Void;
	function forEach(callbackfn:(value:FormDataEntryValue, key:String, parent:js.html.FormData) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():js.lib.FormDataIterator_<ts.Tuple2<String, FormDataEntryValue>>;
	/**
		Returns a list of keys in the list.
	**/
	function keys():js.lib.FormDataIterator_<String>;
	/**
		Returns a list of values in the list.
	**/
	function values():js.lib.FormDataIterator_<FormDataEntryValue>;
};