package js.lib;
/**
	This example shows a variety of different uses of object stores, from updating the data structure with IDBObjectStore.createIndex inside an onupgradeneeded function, to adding a new item to our object store with IDBObjectStore.add. For a full working example, see our To-do Notifications app (view example live.)
**/
extern typedef IIDBObjectStore = {
	/**
		Returns true if the store has a key generator, and false otherwise.
	**/
	final autoIncrement : Bool;
	/**
		Returns a list of the names of indexes in the store.
	**/
	final indexNames : IDOMStringList;
	/**
		Returns the key path of the store, or null if none.
	**/
	final keyPath : haxe.extern.EitherType<String, std.Array<String>>;
	/**
		Returns the name of the store.
	**/
	var name : String;
	/**
		Returns the associated transaction.
	**/
	final transaction : js.html.IIDBTransaction;
	/**
		Adds or updates a record in store with the given value and key.
		
		If the store uses in-line keys and key is specified a "DataError" DOMException will be thrown.
		
		If put() is used, any existing record with the key will be replaced. If add() is used, and if a record with the key already exists the request will fail, with request's error set to a "ConstraintError" DOMException.
		
		If successful, request's result will be the record's key.
	**/
	function add(value:Any, ?key:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>):js.html.IIDBRequest<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>;
	/**
		Deletes all records in store.
		
		If successful, request's result will be undefined.
	**/
	function clear():js.html.IIDBRequest<Void>;
	/**
		Retrieves the number of records matching the given key or key range in query.
		
		If successful, request's result will be the count.
	**/
	function count(?key:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<js.html.IIDBKeyRange, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>):js.html.IIDBRequest<Float>;
	/**
		Creates a new index in store with the given name, keyPath and options and returns a new IDBIndex. If the keyPath and options define constraints that cannot be satisfied with the data already in store the upgrade transaction will abort with a "ConstraintError" DOMException.
		
		Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
		
		Creates a new index in store with the given name, keyPath and options and returns a new IDBIndex. If the keyPath and options define constraints that cannot be satisfied with the data already in store the upgrade transaction will abort with a "ConstraintError" DOMException.
		
		Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
	**/
	@:overload(function(name:String, keyPath:haxe.extern.EitherType<String, Iterable<String>>, ?options:js.html.IDBIndexParameters):js.html.IIDBIndex { })
	function createIndex(name:String, keyPath:haxe.extern.EitherType<String, std.Array<String>>, ?options:js.html.IDBIndexParameters):js.html.IIDBIndex;
	/**
		Deletes records in store with the given key or in the given key range in query.
		
		If successful, request's result will be undefined.
	**/
	function delete(key:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<js.html.IIDBKeyRange, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>):js.html.IIDBRequest<Void>;
	/**
		Deletes the index in store with the given name.
		
		Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
	**/
	function deleteIndex(name:String):Void;
	/**
		Retrieves the value of the first record matching the given key or key range in query.
		
		If successful, request's result will be the value, or undefined if there was no matching record.
	**/
	function get(query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<js.html.IIDBKeyRange, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>):js.html.IIDBRequest<Any>;
	/**
		Retrieves the values of the records matching the given key or key range in query (up to count if given).
		
		If successful, request's result will be an Array of the values.
	**/
	function getAll(?query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<js.html.IIDBKeyRange, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>, ?count:Float):js.html.IIDBRequest<std.Array<Any>>;
	/**
		Retrieves the keys of records matching the given key or key range in query (up to count if given).
		
		If successful, request's result will be an Array of the keys.
	**/
	function getAllKeys(?query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<js.html.IIDBKeyRange, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>, ?count:Float):js.html.IIDBRequest<std.Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>>;
	/**
		Retrieves the key of the first record matching the given key or key range in query.
		
		If successful, request's result will be the key, or undefined if there was no matching record.
	**/
	function getKey(query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<js.html.IIDBKeyRange, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>):js.html.IIDBRequest<Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>>;
	function index(name:String):js.html.IIDBIndex;
	/**
		Opens a cursor over the records matching query, ordered by direction. If query is null, all records in store are matched.
		
		If successful, request's result will be an IDBCursorWithValue pointing at the first matching record, or null if there were no matching records.
	**/
	function openCursor(?query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<js.html.IIDBKeyRange, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>, ?direction:String):js.html.IIDBRequest<Null<js.html.IIDBCursorWithValue>>;
	/**
		Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in store are matched.
		
		If successful, request's result will be an IDBCursor pointing at the first matching record, or null if there were no matching records.
	**/
	function openKeyCursor(?query:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<js.html.IIDBKeyRange, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>, ?direction:String):js.html.IIDBRequest<Null<js.html.IIDBCursor>>;
	/**
		Adds or updates a record in store with the given value and key.
		
		If the store uses in-line keys and key is specified a "DataError" DOMException will be thrown.
		
		If put() is used, any existing record with the key will be replaced. If add() is used, and if a record with the key already exists the request will fail, with request's error set to a "ConstraintError" DOMException.
		
		If successful, request's result will be the record's key.
	**/
	function put(value:Any, ?key:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>):js.html.IIDBRequest<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<ArrayBufferView, haxe.extern.EitherType<IDate, js.html.IDBArrayKey>>>>>>;
};