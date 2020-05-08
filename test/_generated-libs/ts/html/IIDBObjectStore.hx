package ts.html;
/**
	This example shows a variety of different uses of object stores, from updating the data structure with IDBObjectStore.createIndex inside an onupgradeneeded function, to adding a new item to our object store with IDBObjectStore.add. For a full working example, see our To-do Notifications app (view example live.)
**/
typedef IIDBObjectStore = {
	/**
		Returns true if the store has a key generator, and false otherwise.
	**/
	final autoIncrement : Bool;
	/**
		Returns a list of the names of indexes in the store.
	**/
	final indexNames : DOMStringList;
	/**
		Returns the key path of the store, or null if none.
	**/
	final keyPath : ts.AnyOf2<String, Array<String>>;
	/**
		Returns the name of the store.
	**/
	var name : String;
	/**
		Returns the associated transaction.
	**/
	final transaction : IDBTransaction;
	/**
		Adds or updates a record in store with the given value and key.
		
		If the store uses in-line keys and key is specified a "DataError" DOMException will be thrown.
		
		If put() is used, any existing record with the key will be replaced. If add() is used, and if a record with the key already exists the request will fail, with request's error set to a "ConstraintError" DOMException.
		
		If successful, request's result will be the record's key.
	**/
	function add(value:Dynamic, ?key:ts.AnyOf6<String, Float, ts.lib.ArrayBuffer, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):IDBRequest<IDBValidKey>;
	/**
		Deletes all records in store.
		
		If successful, request's result will be undefined.
	**/
	function clear():IDBRequest<Null<Any>>;
	/**
		Retrieves the number of records matching the given key or key range in query.
		
		If successful, request's result will be the count.
	**/
	function count(?key:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):IDBRequest<Float>;
	/**
		Creates a new index in store with the given name, keyPath and options and returns a new IDBIndex. If the keyPath and options define constraints that cannot be satisfied with the data already in store the upgrade transaction will abort with a "ConstraintError" DOMException.
		
		Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
		
		Creates a new index in store with the given name, keyPath and options and returns a new IDBIndex. If the keyPath and options define constraints that cannot be satisfied with the data already in store the upgrade transaction will abort with a "ConstraintError" DOMException.
		
		Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
	**/
	@:overload(function(name:String, keyPath:ts.AnyOf2<String, ts.lib.Iterable<String>>, ?options:IDBIndexParameters):IDBIndex { })
	function createIndex(name:String, keyPath:ts.AnyOf2<String, Array<String>>, ?options:IDBIndexParameters):IDBIndex;
	/**
		Deletes records in store with the given key or in the given key range in query.
		
		If successful, request's result will be undefined.
	**/
	function delete(key:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):IDBRequest<Null<Any>>;
	/**
		Deletes the index in store with the given name.
		
		Throws an "InvalidStateError" DOMException if not called within an upgrade transaction.
	**/
	function deleteIndex(name:String):Void;
	/**
		Retrieves the value of the first record matching the given key or key range in query.
		
		If successful, request's result will be the value, or undefined if there was no matching record.
	**/
	function get(query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):IDBRequest<Dynamic>;
	/**
		Retrieves the values of the records matching the given key or key range in query (up to count if given).
		
		If successful, request's result will be an Array of the values.
	**/
	function getAll(?query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>, ?count:Float):IDBRequest<Array<Dynamic>>;
	/**
		Retrieves the keys of records matching the given key or key range in query (up to count if given).
		
		If successful, request's result will be an Array of the keys.
	**/
	function getAllKeys(?query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>, ?count:Float):IDBRequest<Array<IDBValidKey>>;
	/**
		Retrieves the key of the first record matching the given key or key range in query.
		
		If successful, request's result will be the key, or undefined if there was no matching record.
	**/
	function getKey(query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):IDBRequest<Null<ts.AnyOf6<String, Float, ts.lib.ArrayBuffer, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>>>;
	function index(name:String):IDBIndex;
	/**
		Opens a cursor over the records matching query, ordered by direction. If query is null, all records in store are matched.
		
		If successful, request's result will be an IDBCursorWithValue pointing at the first matching record, or null if there were no matching records.
	**/
	function openCursor(?query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>, ?direction:String):IDBRequest<Null<IDBCursorWithValue>>;
	/**
		Opens a cursor with key only flag set over the records matching query, ordered by direction. If query is null, all records in store are matched.
		
		If successful, request's result will be an IDBCursor pointing at the first matching record, or null if there were no matching records.
	**/
	function openKeyCursor(?query:ts.AnyOf7<String, Float, ts.lib.ArrayBuffer, IDBKeyRange, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>, ?direction:String):IDBRequest<Null<IDBCursor>>;
	/**
		Adds or updates a record in store with the given value and key.
		
		If the store uses in-line keys and key is specified a "DataError" DOMException will be thrown.
		
		If put() is used, any existing record with the key will be replaced. If add() is used, and if a record with the key already exists the request will fail, with request's error set to a "ConstraintError" DOMException.
		
		If successful, request's result will be the record's key.
	**/
	function put(value:Dynamic, ?key:ts.AnyOf6<String, Float, ts.lib.ArrayBuffer, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):IDBRequest<IDBValidKey>;
};