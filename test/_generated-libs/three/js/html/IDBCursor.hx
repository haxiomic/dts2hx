package js.html;
/**
	This IndexedDB API interface represents a cursor for traversing or iterating over multiple records in a database.
**/
@:native("IDBCursor") extern class IDBCursor {
	function new();
	/**
		Returns the direction ("next", "nextunique", "prev" or "prevunique") of the cursor.
	**/
	final direction : String;
	/**
		Returns the key of the cursor. Throws a "InvalidStateError" DOMException if the cursor is advancing or is finished.
	**/
	final key : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.IDate, IDBArrayKey>>>>>;
	/**
		Returns the effective key of the cursor. Throws a "InvalidStateError" DOMException if the cursor is advancing or is finished.
	**/
	final primaryKey : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.IDate, IDBArrayKey>>>>>;
	/**
		Returns the IDBObjectStore or IDBIndex the cursor was opened from.
	**/
	final source : haxe.extern.EitherType<IIDBIndex, js.lib.IIDBObjectStore>;
	/**
		Advances the cursor through the next count records in range.
	**/
	function advance(count:Float):Void;
	/**
		Advances the cursor to the next record in range.
	**/
	@:native("continue")
	function continue_(?key:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.IDate, IDBArrayKey>>>>>):Void;
	/**
		Advances the cursor to the next record in range matching or after key and primaryKey. Throws an "InvalidAccessError" DOMException if the source is not an index.
	**/
	function continuePrimaryKey(key:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.IDate, IDBArrayKey>>>>>, primaryKey:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.IDate, IDBArrayKey>>>>>):Void;
	/**
		Delete the record pointed at by the cursor with a new value.
		
		If successful, request's result will be undefined.
	**/
	function delete():IIDBRequest<Void>;
	/**
		Updated the record pointed at by the cursor with a new value.
		
		Throws a "DataError" DOMException if the effective object store uses in-line keys and the key would have changed.
		
		If successful, request's result will be the record's key.
	**/
	function update(value:Any):IIDBRequest<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.ArrayBufferView, haxe.extern.EitherType<js.lib.IDate, IDBArrayKey>>>>>>;
	static var prototype : IIDBCursor;
}