package js.html;
extern interface WritableStreamErrorCallback {
	@:selfCall
	function call(reason:Any):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
}