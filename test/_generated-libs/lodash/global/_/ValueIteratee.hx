package global._;

typedef ValueIteratee<T> = ts.AnyOf6<String, Float, js.lib.Symbol, (value:T) -> Any, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, { }>;