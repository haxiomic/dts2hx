package ts.html;
typedef TransformStreamDefaultControllerCallback<O> = {
	@:selfCall
	function call(controller:TransformStreamDefaultController<O>):ts.AnyOf2<Void, ts.lib.PromiseLike<Void>>;
};