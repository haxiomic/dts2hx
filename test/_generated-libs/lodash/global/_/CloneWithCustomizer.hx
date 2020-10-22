package global._;

typedef CloneWithCustomizer<TValue, TResult> = (value:TValue, key:Null<ts.AnyOf2<String, Float>>, object:Dynamic, stack:Dynamic) -> TResult;