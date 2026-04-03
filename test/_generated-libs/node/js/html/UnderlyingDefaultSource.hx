package js.html;

typedef UnderlyingDefaultSource<R> = {
	@:optional
	dynamic function cancel(?reason:Dynamic):js.lib.PromiseLike<ts.Undefined>;
	@:optional
	dynamic function pull(controller:ReadableStreamDefaultController<R>):js.lib.PromiseLike<ts.Undefined>;
	@:optional
	dynamic function start(controller:ReadableStreamDefaultController<R>):Dynamic;
	@:optional
	var type : Any;
};