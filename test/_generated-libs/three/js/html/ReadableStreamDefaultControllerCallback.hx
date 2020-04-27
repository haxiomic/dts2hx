package js.html;
extern interface ReadableStreamDefaultControllerCallback<R> {
	@:selfCall
	function call(controller:ReadableStreamDefaultController<R>):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
}