package global._;

typedef ObjectIteratee<TObject> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, ObjectIterator<TObject, Any>, { }>;