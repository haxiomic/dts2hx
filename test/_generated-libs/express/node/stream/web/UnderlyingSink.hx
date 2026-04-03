package node.stream.web;

typedef UnderlyingSink<W> = {
	@:optional
	dynamic function abort(?reason:Dynamic):js.lib.PromiseLike<ts.Undefined>;
	@:optional
	dynamic function close():js.lib.PromiseLike<ts.Undefined>;
	@:optional
	dynamic function start(controller:WritableStreamDefaultController):Dynamic;
	@:optional
	var type : Any;
	@:optional
	dynamic function write(chunk:W, controller:WritableStreamDefaultController):js.lib.PromiseLike<ts.Undefined>;
};