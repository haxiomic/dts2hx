package ts.lib;
extern typedef IAudioParamMap = {
	function forEach(callbackfn:(value:IAudioParam, key:String, parent:IAudioParamMap) -> Void, ?thisArg:Dynamic):Void;
	function get(key:String):Null<IAudioParam>;
	function has(key:String):Bool;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():IterableIterator<ts.Tuple2<String, IAudioParam>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():IterableIterator<String>;
	/**
		Returns an iterable of values in the map
	**/
	function values():IterableIterator<IAudioParam>;
};