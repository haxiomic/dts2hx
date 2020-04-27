package js.html;
extern interface ReadableStreamErrorCallback {
	@:selfCall
	function call(reason:Any):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
}