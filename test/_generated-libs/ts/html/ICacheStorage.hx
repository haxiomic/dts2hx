package ts.html;
/**
	The storage for Cache objects.
**/
typedef ICacheStorage = {
	function delete(cacheName:String):ts.lib.IPromise<Bool>;
	function has(cacheName:String):ts.lib.IPromise<Bool>;
	function keys():ts.lib.IPromise<Array<String>>;
	function match(request:RequestInfo, ?options:CacheQueryOptions):ts.lib.IPromise<Null<IResponse>>;
	function open(cacheName:String):ts.lib.IPromise<ts.lib.ICache>;
};