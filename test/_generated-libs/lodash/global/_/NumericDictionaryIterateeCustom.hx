package global._;

typedef NumericDictionaryIterateeCustom<T, TResult> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, NumericDictionaryIterator<T, TResult>, { }>;