package ts.html;
extern typedef WritableStreamDefaultControllerWriteCallback<W> = {
	@:selfCall
	function call(chunk:W, controller:WritableStreamDefaultController):haxe.extern.EitherType<Void, ts.lib.PromiseLike<Void>>;
};