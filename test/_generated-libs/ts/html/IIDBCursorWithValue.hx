package ts.html;
/**
	This IndexedDB API interface represents a cursor for traversing or iterating over multiple records in a database. It is the same as the IDBCursor, except that it includes the value property.
**/
typedef IIDBCursorWithValue = {
	/**
		Returns the cursor's current value.
	**/
	final value : Dynamic;
	/**
		Returns the direction ("next", "nextunique", "prev" or "prevunique") of the cursor.
	**/
	final direction : IDBCursorDirection;
	/**
		Returns the key of the cursor. Throws a "InvalidStateError" DOMException if the cursor is advancing or is finished.
	**/
	final key : IDBValidKey;
	/**
		Returns the effective key of the cursor. Throws a "InvalidStateError" DOMException if the cursor is advancing or is finished.
	**/
	final primaryKey : IDBValidKey;
	/**
		Returns the IDBObjectStore or IDBIndex the cursor was opened from.
	**/
	final source : ts.AnyOf2<IDBIndex, IDBObjectStore>;
	/**
		Advances the cursor through the next count records in range.
	**/
	function advance(count:Float):Void;
	/**
		Advances the cursor to the next record in range.
	**/
	@:native("continue")
	function continue_(?key:ts.AnyOf6<String, Float, ts.lib.ArrayBuffer, ts.lib.Date_, ts.lib.ArrayBufferView, IDBArrayKey>):Void;
	/**
		Advances the cursor to the next record in range matching or after key and primaryKey. Throws an "InvalidAccessError" DOMException if the source is not an index.
	**/
	function continuePrimaryKey(key:IDBValidKey, primaryKey:IDBValidKey):Void;
	/**
		Delete the record pointed at by the cursor with a new value.
		
		If successful, request's result will be undefined.
	**/
	function delete():IDBRequest<Null<Any>>;
	/**
		Updated the record pointed at by the cursor with a new value.
		
		Throws a "DataError" DOMException if the effective object store uses in-line keys and the key would have changed.
		
		If successful, request's result will be the record's key.
	**/
	function update(value:Dynamic):IDBRequest<IDBValidKey>;
};