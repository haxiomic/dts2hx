package global._;

typedef NumericDictionaryIteratee<T> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, NumericDictionaryIterator<T, Any>, { }>;