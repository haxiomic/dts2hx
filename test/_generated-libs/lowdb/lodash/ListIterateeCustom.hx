package lodash;

typedef ListIterateeCustom<T, TResult> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, ListIterator<T, TResult>, { }>;