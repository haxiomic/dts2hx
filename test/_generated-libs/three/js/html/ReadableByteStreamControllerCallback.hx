package js.html;
extern typedef ReadableByteStreamControllerCallback = {
	@:selfCall
	function call(controller:ReadableByteStreamController):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
};