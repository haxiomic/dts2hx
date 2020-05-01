package ts.html;
extern typedef WritableStreamDefaultControllerStartCallback = {
	@:selfCall
	function call(controller:WritableStreamDefaultController):ts.AnyOf2<Void, ts.lib.PromiseLike<Void>>;
};