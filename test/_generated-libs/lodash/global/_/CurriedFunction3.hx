package global._;

typedef CurriedFunction3<T1, T2, T3, R> = {
	@:overload(function(t1:T1):CurriedFunction2<T2, T3, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2):CurriedFunction2<T1, T3, R> { })
	@:overload(function(t1:T1, t2:T2):CurriedFunction1<T3, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:T3):CurriedFunction2<T1, T2, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:T3):CurriedFunction1<T2, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:T3):CurriedFunction1<T1, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3):R { })
	@:selfCall
	function call():CurriedFunction3<T1, T2, T3, R>;
};