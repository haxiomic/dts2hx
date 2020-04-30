package ts.html;
extern typedef TransformStreamDefaultControllerCallback<O> = {
	@:selfCall
	function call(controller:TransformStreamDefaultController<O>):haxe.extern.EitherType<Void, ts.lib.PromiseLike<Void>>;
};