package js.html;

/**
	The **`EventCounts`** interface of the Performance API provides the number of events that have been dispatched for each event type.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventCounts)
**/
typedef IEventCounts = {
	function forEach(callbackfn:(value:Float, key:String, parent:EventCounts) -> Void, ?thisArg:Dynamic):Void;
	function get(key:String):Null<Float>;
	function has(key:String):Bool;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():js.lib.MapIterator<ts.Tuple2<String, Float>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():js.lib.MapIterator<String>;
	/**
		Returns an iterable of values in the map
	**/
	function values():js.lib.MapIterator<Float>;
};