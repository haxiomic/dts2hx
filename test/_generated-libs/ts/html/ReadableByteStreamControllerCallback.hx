package ts.html;
extern typedef ReadableByteStreamControllerCallback = {
	@:selfCall
	function call(controller:ReadableByteStreamController):ts.AnyOf2<Void, ts.lib.PromiseLike<Void>>;
};