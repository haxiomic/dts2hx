package ts.html;
typedef IRTCStatsReport = {
	function forEach(callbackfn:(value:Dynamic, key:String, parent:RTCStatsReport) -> Void, ?thisArg:Dynamic):Void;
	function get(key:String):Dynamic;
	function has(key:String):Bool;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():ts.lib.IterableIterator<ts.Tuple2<String, Dynamic>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():ts.lib.IterableIterator<String>;
	/**
		Returns an iterable of values in the map
	**/
	function values():ts.lib.IterableIterator<Dynamic>;
};