package js.lib;
/**
	Provides a storage mechanism for Request / Response object pairs that are cached, for example as part of the ServiceWorker life cycle. Note that the Cache interface is exposed to windowed scopes as well as workers. You don't have to use it in conjunction with service workers, even though it is defined in the service worker spec.
**/
extern typedef ICache = {
	function add(request:haxe.extern.EitherType<String, js.html.IRequest>):IPromise<Void>;
	@:overload(function(requests:Iterable<haxe.extern.EitherType<String, js.html.IRequest>>):IPromise<Void> { })
	function addAll(requests:std.Array<haxe.extern.EitherType<String, js.html.IRequest>>):IPromise<Void>;
	function delete(request:haxe.extern.EitherType<String, js.html.IRequest>, ?options:js.html.CacheQueryOptions):IPromise<Bool>;
	function keys(?request:haxe.extern.EitherType<String, js.html.IRequest>, ?options:js.html.CacheQueryOptions):IPromise<ReadonlyArray<js.html.IRequest>>;
	function match(request:haxe.extern.EitherType<String, js.html.IRequest>, ?options:js.html.CacheQueryOptions):IPromise<Null<js.html.IResponse>>;
	function matchAll(?request:haxe.extern.EitherType<String, js.html.IRequest>, ?options:js.html.CacheQueryOptions):IPromise<ReadonlyArray<js.html.IResponse>>;
	function put(request:haxe.extern.EitherType<String, js.html.IRequest>, response:js.html.IResponse):IPromise<Void>;
};