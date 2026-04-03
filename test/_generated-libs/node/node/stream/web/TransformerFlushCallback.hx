package node.stream.web;

typedef TransformerFlushCallback<O> = (controller:TransformStreamDefaultController<O>) -> js.lib.PromiseLike<ts.Undefined>;