package global._;

typedef ObjectIterateeCustom<TObject, TResult> = ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<TObject, TResult>, { }>;