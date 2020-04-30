package ts.html;
extern typedef ReadableStreamErrorCallback = {
	@:selfCall
	function call(reason:Any):haxe.extern.EitherType<Void, ts.lib.PromiseLike<Void>>;
};