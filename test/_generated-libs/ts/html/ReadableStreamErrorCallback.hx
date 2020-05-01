package ts.html;
extern typedef ReadableStreamErrorCallback = {
	@:selfCall
	function call(reason:Any):ts.AnyOf2<Void, ts.lib.PromiseLike<Void>>;
};