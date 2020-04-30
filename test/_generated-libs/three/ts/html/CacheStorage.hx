package ts.html;
/**
	The storage for Cache objects.
**/
@:native("CacheStorage") extern class CacheStorage {
	function new();
	function delete(cacheName:String):ts.lib.IPromise<Bool>;
	function has(cacheName:String):ts.lib.IPromise<Bool>;
	function keys():ts.lib.IPromise<std.Array<String>>;
	function match(request:haxe.extern.EitherType<String, IRequest>, ?options:CacheQueryOptions):ts.lib.IPromise<Null<IResponse>>;
	function open(cacheName:String):ts.lib.IPromise<ts.lib.ICache>;
	static var prototype : ICacheStorage;
}