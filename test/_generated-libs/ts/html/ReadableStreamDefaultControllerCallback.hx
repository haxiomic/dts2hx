package ts.html;
extern typedef ReadableStreamDefaultControllerCallback<R> = {
	@:selfCall
	function call(controller:ReadableStreamDefaultController<R>):haxe.extern.EitherType<Void, ts.lib.PromiseLike<Void>>;
};