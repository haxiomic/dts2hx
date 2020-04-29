package js.html;
extern typedef TransformStreamDefaultControllerTransformCallback<I, O> = {
	@:selfCall
	function call(chunk:I, controller:TransformStreamDefaultController<O>):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
};