package global._;

typedef ValueIterateeCustom<T, TResult> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> TResult, { }>;