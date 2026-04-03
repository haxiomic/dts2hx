package node.stream.web;

typedef ReadableStreamAsyncIteratorTypedef<T> = {
	function next():js.lib.Promise<js.lib.IteratorResult<T, Dynamic>>;
	@:optional
	@:native("return")
	function return_(?value:Dynamic):js.lib.Promise<js.lib.IteratorResult<T, Dynamic>>;
	@:optional
	@:native("throw")
	function throw_(?e:Dynamic):js.lib.Promise<js.lib.IteratorResult<T, Dynamic>>;
};