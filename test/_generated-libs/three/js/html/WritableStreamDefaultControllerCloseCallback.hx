package js.html;
extern interface WritableStreamDefaultControllerCloseCallback {
	@:selfCall
	function call():haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
}