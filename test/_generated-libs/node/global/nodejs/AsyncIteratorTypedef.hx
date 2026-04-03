package global.nodejs;

typedef AsyncIteratorTypedef<T, TReturn, TNext> = {
	function next():js.lib.Promise<js.lib.IteratorResult<T, TReturn>>;
	@:optional
	@:native("return")
	function return_(?value:ts.AnyOf2<js.lib.PromiseLike<TReturn>, TReturn>):js.lib.Promise<js.lib.IteratorResult<T, TReturn>>;
	@:optional
	@:native("throw")
	function throw_(?e:Dynamic):js.lib.Promise<js.lib.IteratorResult<T, TReturn>>;
};