package js.lib;
/**
	Provides a storage mechanism for Request / Response object pairs that are cached, for example as part of the ServiceWorker life cycle. Note that the Cache interface is exposed to windowed scopes as well as workers. You don't have to use it in conjunction with service workers, even though it is defined in the service worker spec.
**/
@:native("Cache") @tsInterface extern class Cache {
	function new();
	function add(request:haxe.extern.EitherType<String, js.html.Request>):Promise<Void>;
	@:overload(function(requests:Iterable<haxe.extern.EitherType<String, js.html.Request>>):Promise<Void> { })
	function addAll(requests:std.Array<haxe.extern.EitherType<String, js.html.Request>>):Promise<Void>;
	function delete(request:haxe.extern.EitherType<String, js.html.Request>, ?options:js.html.CacheQueryOptions):Promise<Bool>;
	function keys(?request:haxe.extern.EitherType<String, js.html.Request>, ?options:js.html.CacheQueryOptions):Promise<ReadonlyArray<js.html.Request>>;
	function match(request:haxe.extern.EitherType<String, js.html.Request>, ?options:js.html.CacheQueryOptions):Promise<Null<js.html.Response>>;
	function matchAll(?request:haxe.extern.EitherType<String, js.html.Request>, ?options:js.html.CacheQueryOptions):Promise<ReadonlyArray<js.html.Response>>;
	function put(request:haxe.extern.EitherType<String, js.html.Request>, response:js.html.Response):Promise<Void>;
	static var prototype : Cache;
}