package node.url;

@:jsRequire("url", "URLSearchParams") extern class URLSearchParams {
	function new(?init:ts.AnyOf5<String, Array<ts.Tuple2<String, String>>, URLSearchParams, Iterable<ts.Tuple2<String, String>, Dynamic, Dynamic>, haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>>);
	function append(name:String, value:String):Void;
	function delete(name:String):Void;
	function entries():js.lib.IterableIterator<ts.Tuple2<String, String>, Dynamic, Dynamic>;
	function forEach(callback:(value:String, name:String, searchParams:URLSearchParams) -> Void):Void;
	function get(name:String):Null<String>;
	function getAll(name:String):Array<String>;
	function has(name:String):Bool;
	function keys():js.lib.IterableIterator<String, Dynamic, Dynamic>;
	function set(name:String, value:String):Void;
	function sort():Void;
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
	function values():js.lib.IterableIterator<String, Dynamic, Dynamic>;
	static var prototype : URLSearchParams;
}