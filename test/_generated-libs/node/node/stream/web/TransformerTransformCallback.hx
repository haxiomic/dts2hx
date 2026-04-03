package node.stream.web;

typedef TransformerTransformCallback<I, O> = (chunk:I, controller:TransformStreamDefaultController<O>) -> js.lib.PromiseLike<ts.Undefined>;