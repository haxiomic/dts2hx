package node.url;
@:jsRequire("url", "URLSearchParams") extern class URLSearchParams {
	function new(?init:haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<js.lib.Tuple2<String, String>>, haxe.extern.EitherType<URLSearchParams, haxe.extern.EitherType<js.lib.Iterable<js.lib.Tuple2<String, String>>, { }>>>>);
	function append(name:String, value:String):Void;
	function delete(name:String):Void;
	function entries():js.lib.IterableIterator<js.lib.Tuple2<String, String>>;
	function forEach(callback:(value:String, name:String, searchParams:URLSearchParams) -> Void):Void;
	function get(name:String):Null<String>;
	function getAll(name:String):std.Array<String>;
	function has(name:String):Bool;
	function keys():js.lib.IterableIterator<String>;
	function set(name:String, value:String):Void;
	function sort():Void;
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
	function values():js.lib.IterableIterator<String>;
}