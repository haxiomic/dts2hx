package global._;

typedef RightCurriedFunction4<T1, T2, T3, T4, R> = {
	@:overload(function(t4:T4):RightCurriedFunction3<T1, T2, T3, R> { })
	@:overload(function(t3:T3, t4:LoDashStatic):RightCurriedFunction3<T1, T2, T4, R> { })
	@:overload(function(t3:T3, t4:T4):RightCurriedFunction2<T1, T2, R> { })
	@:overload(function(t2:T2, t3:LoDashStatic, t4:LoDashStatic):RightCurriedFunction3<T1, T3, T4, R> { })
	@:overload(function(t2:T2, t3:T3, t4:LoDashStatic):RightCurriedFunction2<T1, T4, R> { })
	@:overload(function(t2:T2, t3:LoDashStatic, t4:T4):RightCurriedFunction2<T1, T3, R> { })
	@:overload(function(t2:T2, t3:T3, t4:T4):RightCurriedFunction1<T1, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:LoDashStatic, t4:LoDashStatic):RightCurriedFunction3<T2, T3, T4, R> { })
	@:overload(function(t1:T1, t2:T2, t3:LoDashStatic, t4:LoDashStatic):RightCurriedFunction2<T3, T4, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:T3, t4:LoDashStatic):RightCurriedFunction2<T2, T4, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:LoDashStatic, t4:T4):RightCurriedFunction2<T2, T3, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3, t4:LoDashStatic):RightCurriedFunction1<T4, R> { })
	@:overload(function(t1:T1, t2:T2, t3:LoDashStatic, t4:T4):RightCurriedFunction1<T3, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:T3, t4:T4):RightCurriedFunction1<T2, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3, t4:T4):R { })
	@:selfCall
	function call():RightCurriedFunction4<T1, T2, T3, T4, R>;
};