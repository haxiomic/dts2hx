package js.html;

typedef UnderlyingSource<R> = {
	@:optional
	var autoAllocateChunkSize : Float;
	@:optional
	dynamic function cancel(?reason:Dynamic):js.lib.PromiseLike<ts.Undefined>;
	@:optional
	dynamic function pull(controller:ReadableStreamController<R>):js.lib.PromiseLike<ts.Undefined>;
	@:optional
	dynamic function start(controller:ReadableStreamController<R>):Dynamic;
	@:optional
	var type : String;
};