package undici_types;

typedef Cache = {
	function match(request:RequestInfo, ?options:CacheQueryOptions):js.lib.Promise<Null<Response>>;
	function matchAll(?request:RequestInfo, ?options:CacheQueryOptions):js.lib.Promise<haxe.ds.ReadOnlyArray<Response>>;
	function add(request:RequestInfo):js.lib.Promise<Null<Any>>;
	function addAll(requests:Array<RequestInfo>):js.lib.Promise<Null<Any>>;
	function put(request:RequestInfo, response:Response):js.lib.Promise<Null<Any>>;
	function delete(request:RequestInfo, ?options:CacheQueryOptions):js.lib.Promise<Bool>;
	function keys(?request:RequestInfo, ?options:CacheQueryOptions):js.lib.Promise<haxe.ds.ReadOnlyArray<Request>>;
};