package ts.html;
extern typedef ReadableByteStreamControllerCallback = {
	@:selfCall
	function call(controller:ReadableByteStreamController):haxe.extern.EitherType<Void, ts.lib.PromiseLike<Void>>;
};