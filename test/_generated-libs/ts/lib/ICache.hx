package ts.lib;
/**
	Provides a storage mechanism for Request / Response object pairs that are cached, for example as part of the ServiceWorker life cycle. Note that the Cache interface is exposed to windowed scopes as well as workers. You don't have to use it in conjunction with service workers, even though it is defined in the service worker spec.
**/
typedef ICache = {
	function add(request:ts.html.RequestInfo):IPromise<Void>;
	@:overload(function(requests:Iterable<ts.html.RequestInfo>):IPromise<Void> { })
	function addAll(requests:Array<ts.html.RequestInfo>):IPromise<Void>;
	function delete(request:ts.html.RequestInfo, ?options:ts.html.CacheQueryOptions):IPromise<Bool>;
	function keys(?request:ts.AnyOf2<String, ts.html.IRequest>, ?options:ts.html.CacheQueryOptions):IPromise<ReadonlyArray<ts.html.IRequest>>;
	function match(request:ts.html.RequestInfo, ?options:ts.html.CacheQueryOptions):IPromise<Null<ts.html.IResponse>>;
	function matchAll(?request:ts.AnyOf2<String, ts.html.IRequest>, ?options:ts.html.CacheQueryOptions):IPromise<ReadonlyArray<ts.html.IResponse>>;
	function put(request:ts.html.RequestInfo, response:ts.html.IResponse):IPromise<Void>;
};