package global._;

typedef ValueKeyIteratee<T> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T, key:String) -> Any, { }>;