package ts.html;
extern typedef WritableStreamErrorCallback = {
	@:selfCall
	function call(reason:Any):haxe.extern.EitherType<Void, ts.lib.PromiseLike<Void>>;
};