package node.stream.web;

typedef UnderlyingSinkWriteCallback<W> = (chunk:W, controller:WritableStreamDefaultController) -> js.lib.PromiseLike<ts.Undefined>;