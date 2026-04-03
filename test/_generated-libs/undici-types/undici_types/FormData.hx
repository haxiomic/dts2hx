package undici_types;

/**
	Provides a way to easily construct a set of key/value pairs representing form fields and their values, which can then be easily sent using fetch().
**/
@:jsRequire("undici-types", "FormData") extern class FormData {
	function new();
	/**
		Appends a new value onto an existing key inside a FormData object,
		or adds the key if it does not already exist.
		
		The difference between `set()` and `append()` is that if the specified key already exists, `set()` will overwrite all existing values with the new one, whereas `append()` will append the new value onto the end of the existing set of values.
	**/
	function append(name:String, value:Any, ?fileName:String):Void;
	/**
		Set a new value for an existing key inside FormData,
		or add the new field if it does not already exist.
	**/
	function set(name:String, value:Any, ?fileName:String):Void;
	/**
		Returns the first value associated with a given key from within a `FormData` object.
		If you expect multiple values and want all of them, use the `getAll()` method instead.
	**/
	function get(name:String):Null<FormDataEntryValue>;
	/**
		Returns all the values associated with a given key from within a `FormData` object.
	**/
	function getAll(name:String):Array<FormDataEntryValue>;
	/**
		Returns a boolean stating whether a `FormData` object contains a certain key.
	**/
	function has(name:String):Bool;
	/**
		Deletes a key and its value(s) from a `FormData` object.
	**/
	function delete(name:String):Void;
	/**
		Executes given callback function for each field of the FormData instance
	**/
	dynamic function forEach(callbackfn:(value:FormDataEntryValue, key:String, iterable:FormData) -> Void, ?thisArg:Any):Void;
	/**
		Returns an [`iterator`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols) allowing to go through all keys contained in this `FormData` object.
		Each key is a `string`.
	**/
	dynamic function keys():SpecIterableIterator<String>;
	/**
		Returns an [`iterator`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols) allowing to go through all values contained in this object `FormData` object.
		Each value is a [`FormDataValue`](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEntryValue).
	**/
	dynamic function values():SpecIterableIterator<FormDataEntryValue>;
	/**
		Returns an [`iterator`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols) allowing to go through the `FormData` key/value pairs.
		The key of each pair is a string; the value is a [`FormDataValue`](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEntryValue).
	**/
	dynamic function entries():SpecIterableIterator<ts.Tuple2<String, FormDataEntryValue>>;
	static var prototype : FormData;
}