package ts.html;
/**
	Provides a storage mechanism for Request / Response object pairs that are cached, for example as part of the ServiceWorker life cycle. Note that the Cache interface is exposed to windowed scopes as well as workers. You don't have to use it in conjunction with service workers, even though it is defined in the service worker spec.
**/
typedef ICache = {
	function add(request:RequestInfo):ts.lib.Promise<Void>;
	@:overload(function(requests:ts.lib.Iterable<RequestInfo>):ts.lib.Promise<Void> { })
	function addAll(requests:Array<RequestInfo>):ts.lib.Promise<Void>;
	function delete(request:RequestInfo, ?options:CacheQueryOptions):ts.lib.Promise<Bool>;
	function keys(?request:ts.AnyOf2<String, Request>, ?options:CacheQueryOptions):ts.lib.Promise<ts.lib.ReadonlyArray<Request>>;
	function match(request:RequestInfo, ?options:CacheQueryOptions):ts.lib.Promise<Null<Response>>;
	function matchAll(?request:ts.AnyOf2<String, Request>, ?options:CacheQueryOptions):ts.lib.Promise<ts.lib.ReadonlyArray<Response>>;
	function put(request:RequestInfo, response:Response):ts.lib.Promise<Void>;
};