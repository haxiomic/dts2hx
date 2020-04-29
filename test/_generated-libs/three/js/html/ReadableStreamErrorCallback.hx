package js.html;
extern typedef ReadableStreamErrorCallback = {
	@:selfCall
	function call(reason:Any):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
};