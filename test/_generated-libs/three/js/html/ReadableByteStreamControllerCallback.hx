package js.html;
extern interface ReadableByteStreamControllerCallback {
	@:selfCall
	function call(controller:ReadableByteStreamController):haxe.extern.EitherType<Void, js.lib.PromiseLike<Void>>;
}