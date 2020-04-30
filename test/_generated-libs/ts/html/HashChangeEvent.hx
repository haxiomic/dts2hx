package ts.html;
/**
	Events that fire when the fragment identifier of the URL has changed.
**/
@:native("HashChangeEvent") extern class HashChangeEvent {
	function new(type:String, ?eventInitDict:HashChangeEventInit);
	final newURL : String;
	final oldURL : String;
	static var prototype : IHashChangeEvent;
}