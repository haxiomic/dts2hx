package ts.html;
extern typedef ReadableStreamErrorCallback = {
	@:selfCall
	function call(reason:Dynamic):ts.AnyOf2<Void, ts.lib.PromiseLike<Void>>;
};