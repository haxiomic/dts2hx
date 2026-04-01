package global._;

typedef RightCurriedFunction1<T1, R> = ts.AnyOf2<() -> RightCurriedFunction1<T1, R>, (t1:T1) -> R>;