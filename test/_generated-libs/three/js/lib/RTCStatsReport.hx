package js.lib;
@:native("RTCStatsReport") extern class RTCStatsReport {
	function new();
	function forEach(callbackfn:(value:Any, key:String, parent:IRTCStatsReport) -> Void, ?thisArg:Any):Void;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	final size : Float;
	/**
		Returns an iterable of key, value pairs for every entry in the map.
	**/
	function entries():IterableIterator<js.lib.Tuple2<K, V>>;
	/**
		Returns an iterable of keys in the map
	**/
	function keys():IterableIterator<K>;
	/**
		Returns an iterable of values in the map
	**/
	function values():IterableIterator<V>;
	static var prototype : IRTCStatsReport;
}