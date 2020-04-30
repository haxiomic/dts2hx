package ts.html;
extern typedef WritableStreamDefaultControllerStartCallback = {
	@:selfCall
	function call(controller:WritableStreamDefaultController):haxe.extern.EitherType<Void, ts.lib.PromiseLike<Void>>;
};