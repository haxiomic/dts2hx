package js.html;
/**
	The storage for Cache objects.
**/
@:native("CacheStorage") extern class CacheStorage {
	function new();
	function delete(cacheName:String):js.lib.IPromise<Bool>;
	function has(cacheName:String):js.lib.IPromise<Bool>;
	function keys():js.lib.IPromise<std.Array<String>>;
	function match(request:haxe.extern.EitherType<String, IRequest>, ?options:CacheQueryOptions):js.lib.IPromise<Null<IResponse>>;
	function open(cacheName:String):js.lib.IPromise<js.lib.ICache>;
	static var prototype : ICacheStorage;
}