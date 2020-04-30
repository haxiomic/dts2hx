package node.url;
@:jsRequire("url", "URLSearchParams") extern class URLSearchParams {
	function new(?init:haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<ts.lib.Tuple2<String, String>>, haxe.extern.EitherType<URLSearchParams, haxe.extern.EitherType<ts.lib.Iterable<ts.lib.Tuple2<String, String>>, { }>>>>);
	function append(name:String, value:String):Void;
	function delete(name:String):Void;
	function entries():ts.lib.IterableIterator<ts.lib.Tuple2<String, String>>;
	function forEach(callback:(value:String, name:String, searchParams:URLSearchParams) -> Void):Void;
	function get(name:String):Null<String>;
	function getAll(name:String):std.Array<String>;
	function has(name:String):Bool;
	function keys():ts.lib.IterableIterator<String>;
	function set(name:String, value:String):Void;
	function sort():Void;
	/**
		Returns a string representation of an object.
	**/
	function toString():String;
	function values():ts.lib.IterableIterator<String>;
}