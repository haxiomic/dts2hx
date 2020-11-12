package global._;

typedef CurriedFunction2<T1, T2, R> = ts.AnyOf4<() -> CurriedFunction2<T1, T2, R>, (t1:T1) -> CurriedFunction1<T2, R>, (t1:LoDashStatic, t2:T2) -> CurriedFunction1<T1, R>, (t1:T1, t2:T2) -> R>;