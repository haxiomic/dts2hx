package js.html;

/**
	The **`HighlightRegistry`** interface of the CSS Custom Highlight API is used to register Highlight objects to be styled using the API.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/HighlightRegistry)
**/
@:native("HighlightRegistry") extern class HighlightRegistry {
	function new();
	function forEach(callbackfn:(value:Highlight, key:String, parent:HighlightRegistry) -> Void, ?thisArg:Dynamic):Void;
	function clear():Void;
	function delete(key:String):Bool;
	/**
		Returns a specified element from the Map object. If the value that is associated to the provided key is an object, then you will get a reference to that object and any change made to that object will effectively modify it inside the Map.
	**/
	function get(key:String):Null<Highlight>;
	function has(key:String):Bool;
	/**
		Adds a new element with a specified key and value to the Map. If an element with the same key already exists, the element will be updated.
	**/
	function set(key:String, value:Highlight):HighlightRegistry;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():js.lib.MapIterator<ts.Tuple2<String, Highlight>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():js.lib.MapIterator<String>;
	/**
		Returns an iterable of values in the map
	**/
	function values():js.lib.MapIterator<Highlight>;
	static var prototype : HighlightRegistry;
}