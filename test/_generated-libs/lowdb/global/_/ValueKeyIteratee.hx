package global._;

typedef ValueKeyIteratee<T> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, (value:T, key:String) -> Any, { }>;