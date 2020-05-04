package node.stream;
typedef TransformCallback = ts.AnyOf3<() -> Void, (error:ts.lib.IError) -> Void, (error:ts.lib.IError, data:Dynamic) -> Void>;