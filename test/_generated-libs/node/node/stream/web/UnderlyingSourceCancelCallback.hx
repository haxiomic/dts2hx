package node.stream.web;

typedef UnderlyingSourceCancelCallback = ts.AnyOf2<() -> js.lib.PromiseLike<ts.Undefined>, (reason:Dynamic) -> js.lib.PromiseLike<ts.Undefined>>;