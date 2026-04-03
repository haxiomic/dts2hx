package node.stream.web;

typedef UnderlyingSourcePullCallback<R> = (controller:ReadableStreamController<R>) -> js.lib.PromiseLike<ts.Undefined>;