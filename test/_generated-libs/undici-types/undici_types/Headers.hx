package undici_types;

@:jsRequire("undici-types", "Headers") extern class Headers {
	function new(?init:HeadersInit);
	function append(name:String, value:String):Void;
	function delete(name:String):Void;
	function get(name:String):Null<String>;
	function has(name:String):Bool;
	function set(name:String, value:String):Void;
	function getSetCookie():Array<String>;
	function forEach(callbackfn:(value:String, key:String, iterable:Headers) -> Void, ?thisArg:Any):Void;
	function keys():SpecIterableIterator<String>;
	function values():SpecIterableIterator<String>;
	function entries():SpecIterableIterator<ts.Tuple2<String, String>>;
	static var prototype : Headers;
}