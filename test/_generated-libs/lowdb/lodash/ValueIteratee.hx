package lodash;

typedef ValueIteratee<T> = ts.AnyOf6<String, Float, js.lib.Symbol, (value:T) -> Any, ts.Tuple2<PropertyName, Dynamic>, { }>;