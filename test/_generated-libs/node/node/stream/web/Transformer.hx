package node.stream.web;

typedef Transformer<I, O> = {
	@:optional
	dynamic function flush(controller:TransformStreamDefaultController<O>):js.lib.PromiseLike<ts.Undefined>;
	@:optional
	var readableType : Any;
	@:optional
	dynamic function start(controller:TransformStreamDefaultController<O>):Dynamic;
	@:optional
	dynamic function transform(chunk:I, controller:TransformStreamDefaultController<O>):js.lib.PromiseLike<ts.Undefined>;
	@:optional
	var writableType : Any;
};