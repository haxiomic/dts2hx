package js.html;
extern typedef WritableStreamDefaultControllerStartCallback = {
	@:selfCall
	function call(controller:WritableStreamDefaultController):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
};