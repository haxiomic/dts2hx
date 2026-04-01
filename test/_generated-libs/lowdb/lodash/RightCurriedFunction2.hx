package lodash;

typedef RightCurriedFunction2<T1, T2, R> = ts.AnyOf4<() -> RightCurriedFunction2<T1, T2, R>, (t2:T2) -> RightCurriedFunction1<T1, R>, (t1:T1, t2:LoDashStatic) -> RightCurriedFunction1<T2, R>, (t1:T1, t2:T2) -> R>;