package ts.html;
typedef ReadableStreamDefaultControllerCallback<R> = {
	@:selfCall
	function call(controller:ReadableStreamDefaultController<R>):ts.AnyOf2<Void, ts.lib.PromiseLike<Void>>;
};