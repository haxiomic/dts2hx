package ts.html;
/**
	This IndexedDB API interface represents a cursor for traversing or iterating over multiple records in a database. It is the same as the IDBCursor, except that it includes the value property.
**/
@:native("IDBCursorWithValue") extern class IDBCursorWithValue {
	function new();
	/**
		Returns the cursor's current value.
	**/
	final value : Any;
	static var prototype : IIDBCursorWithValue;
}