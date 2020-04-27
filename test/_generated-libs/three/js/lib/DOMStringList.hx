package js.lib;
/**
	A type returned by some APIs which contains a list of DOMString (strings).
**/
@:native("DOMStringList") @tsInterface extern class DOMStringList {
	function new();
	/**
		Returns the number of strings in strings.
	**/
	final length : Float;
	/**
		Returns true if strings contains string, and false otherwise.
	**/
	function contains(string:String):Bool;
	/**
		Returns the string with index index from strings.
	**/
	function item(index:Float):Null<String>;
	static var prototype : DOMStringList;
}