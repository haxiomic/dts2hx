package ts.html;
/**
	This IndexedDB API interface indicates that the version of the database has changed, as the result of an IDBOpenDBRequest.onupgradeneeded event handler function.
**/
@:native("IDBVersionChangeEvent") extern class IDBVersionChangeEvent {
	function new(type:String, ?eventInitDict:IDBVersionChangeEventInit);
	final newVersion : Null<Float>;
	final oldVersion : Float;
	static var prototype : IIDBVersionChangeEvent;
}