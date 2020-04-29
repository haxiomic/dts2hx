package js.html;
extern typedef WritableStreamErrorCallback = {
	@:selfCall
	function call(reason:Any):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
};