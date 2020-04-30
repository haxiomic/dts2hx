package ts.html;
extern typedef TransformStreamDefaultControllerTransformCallback<I, O> = {
	@:selfCall
	function call(chunk:I, controller:TransformStreamDefaultController<O>):haxe.extern.EitherType<Void, ts.lib.PromiseLike<Void>>;
};