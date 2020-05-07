package ts.html;
/**
	The storage for Cache objects.
**/
@:native("CacheStorage") extern class CacheStorage {
	function new();
	function delete(cacheName:String):ts.lib.Promise<Bool>;
	function has(cacheName:String):ts.lib.Promise<Bool>;
	function keys():ts.lib.Promise<Array<String>>;
	function match(request:RequestInfo, ?options:CacheQueryOptions):ts.lib.Promise<Null<Response>>;
	function open(cacheName:String):ts.lib.Promise<Cache>;
	static var prototype : CacheStorage;
}