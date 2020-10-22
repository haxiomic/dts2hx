package global._;

typedef RightCurriedFunction3<T1, T2, T3, R> = {
	@:overload(function(t3:T3):RightCurriedFunction2<T1, T2, R> { })
	@:overload(function(t2:T2, t3:LoDashStatic):RightCurriedFunction2<T1, T3, R> { })
	@:overload(function(t2:T2, t3:T3):RightCurriedFunction1<T1, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:LoDashStatic):RightCurriedFunction2<T2, T3, R> { })
	@:overload(function(t1:T1, t2:T2, t3:LoDashStatic):RightCurriedFunction1<T3, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:T3):RightCurriedFunction1<T2, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3):R { })
	@:selfCall
	function call():RightCurriedFunction3<T1, T2, T3, R>;
};