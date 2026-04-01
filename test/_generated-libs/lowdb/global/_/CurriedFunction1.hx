package global._;

typedef CurriedFunction1<T1, R> = ts.AnyOf2<() -> CurriedFunction1<T1, R>, (t1:T1) -> R>;