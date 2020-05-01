package ts.html;
extern typedef TransformStreamDefaultControllerTransformCallback<I, O> = {
	@:selfCall
	function call(chunk:I, controller:TransformStreamDefaultController<O>):ts.AnyOf2<Void, ts.lib.PromiseLike<Void>>;
};