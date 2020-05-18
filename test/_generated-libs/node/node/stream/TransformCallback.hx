package node.stream;

typedef TransformCallback = ts.AnyOf3<() -> Void, (error:js.lib.Error) -> Void, (error:js.lib.Error, data:Dynamic) -> Void>;