package node.stream;
typedef TransformCallback = ts.AnyOf3<() -> Void, (error:ts.lib.Error) -> Void, (error:ts.lib.Error, data:Dynamic) -> Void>;