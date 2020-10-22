package lodash;

typedef CurriedFunction2<T1, T2, R> = {
	@:overload(function(t1:T1):CurriedFunction1<T2, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2):CurriedFunction1<T1, R> { })
	@:overload(function(t1:T1, t2:T2):R { })
	@:selfCall
	function call():CurriedFunction2<T1, T2, R>;
};