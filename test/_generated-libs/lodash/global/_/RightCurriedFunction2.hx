package global._;

typedef RightCurriedFunction2<T1, T2, R> = {
	@:overload(function(t2:T2):RightCurriedFunction1<T1, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic):RightCurriedFunction1<T2, R> { })
	@:overload(function(t1:T1, t2:T2):R { })
	@:selfCall
	function call():RightCurriedFunction2<T1, T2, R>;
};