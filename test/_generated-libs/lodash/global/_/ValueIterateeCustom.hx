package global._;

typedef ValueIterateeCustom<T, TResult> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, (value:T) -> TResult, { }>;