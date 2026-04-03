package node.stream.web;

typedef UnderlyingSinkAbortCallback = ts.AnyOf2<() -> js.lib.PromiseLike<ts.Undefined>, (reason:Dynamic) -> js.lib.PromiseLike<ts.Undefined>>;