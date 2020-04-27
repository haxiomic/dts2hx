package js.html;
/**
	The storage for Cache objects.
**/
@:native("CacheStorage") @tsInterface extern class CacheStorage {
	function new();
	function delete(cacheName:String):js.lib.Promise<Bool>;
	function has(cacheName:String):js.lib.Promise<Bool>;
	function keys():js.lib.Promise<std.Array<String>>;
	function match(request:haxe.extern.EitherType<String, Request>, ?options:CacheQueryOptions):js.lib.Promise<Null<Response>>;
	function open(cacheName:String):js.lib.Promise<js.lib.Cache>;
	static var prototype : CacheStorage;
}