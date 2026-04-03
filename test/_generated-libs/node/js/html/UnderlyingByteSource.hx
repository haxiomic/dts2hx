package js.html;

typedef UnderlyingByteSource = {
	@:optional
	var autoAllocateChunkSize : Float;
	@:optional
	dynamic function cancel(?reason:Dynamic):js.lib.PromiseLike<ts.Undefined>;
	@:optional
	dynamic function pull(controller:ReadableByteStreamController):js.lib.PromiseLike<ts.Undefined>;
	@:optional
	dynamic function start(controller:ReadableByteStreamController):Dynamic;
	var type : String;
};