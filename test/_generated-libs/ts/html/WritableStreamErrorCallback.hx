package ts.html;
extern typedef WritableStreamErrorCallback = {
	@:selfCall
	function call(reason:Dynamic):ts.AnyOf2<Void, ts.lib.PromiseLike<Void>>;
};