package js.html;

/**
	The **`AudioParamMap`** interface of the Web Audio API represents an iterable and read-only set of multiple audio parameters.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioParamMap)
**/
@:native("AudioParamMap") extern class AudioParamMap {
	function new();
	function forEach(callbackfn:(value:js.html.audio.AudioParam, key:String, parent:AudioParamMap) -> Void, ?thisArg:Dynamic):Void;
	function get(key:String):Null<js.html.audio.AudioParam>;
	function has(key:String):Bool;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():js.lib.MapIterator<ts.Tuple2<String, js.html.audio.AudioParam>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():js.lib.MapIterator<String>;
	/**
		Returns an iterable of values in the map
	**/
	function values():js.lib.MapIterator<js.html.audio.AudioParam>;
	static var prototype : AudioParamMap;
}