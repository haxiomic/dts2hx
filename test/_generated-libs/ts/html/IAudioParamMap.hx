package ts.html;
typedef IAudioParamMap = {
	function forEach(callbackfn:(value:AudioParam, key:String, parent:AudioParamMap) -> Void, ?thisArg:Dynamic):Void;
	function get(key:String):Null<AudioParam>;
	function has(key:String):Bool;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():ts.lib.IterableIterator<ts.Tuple2<String, AudioParam>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():ts.lib.IterableIterator<String>;
	/**
		Returns an iterable of values in the map
	**/
	function values():ts.lib.IterableIterator<AudioParam>;
};