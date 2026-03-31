package global._;

typedef ObjectIterateeCustom<TObject, TResult> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, ObjectIterator<TObject, TResult>, { }>;