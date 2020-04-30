package ts.lib;
/**
	This Fetch API interface allows you to perform various actions on HTTP request and response headers. These actions include retrieving, setting, adding to, and removing. A Headers object has an associated header list, which is initially empty and consists of zero or more name and value pairs.  You can add to this using methods like append() (see Examples.) In all methods of this interface, header names are matched by case-insensitive byte sequence.
**/
@:native("Headers") extern class Headers {
	function new(?init:haxe.extern.EitherType<IHeaders, haxe.extern.EitherType<std.Array<std.Array<String>>, Any>>);
	function append(name:String, value:String):Void;
	function delete(name:String):Void;
	function get(name:String):Null<String>;
	function has(name:String):Bool;
	function set(name:String, value:String):Void;
	function forEach(callbackfn:(value:String, key:String, parent:IHeaders) -> Void, ?thisArg:Any):Void;
	/**
		Returns an iterator allowing to go through all key/value pairs contained in this object.
	**/
	function entries():IterableIterator<ts.lib.Tuple2<String, String>>;
	/**
		Returns an iterator allowing to go through all keys of the key/value pairs contained in this object.
	**/
	function keys():IterableIterator<String>;
	/**
		Returns an iterator allowing to go through all values of the key/value pairs contained in this object.
	**/
	function values():IterableIterator<String>;
	static var prototype : IHeaders;
}