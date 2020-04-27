package js.html;
extern interface WritableStreamDefaultControllerStartCallback {
	@:selfCall
	function call(controller:WritableStreamDefaultController):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
}