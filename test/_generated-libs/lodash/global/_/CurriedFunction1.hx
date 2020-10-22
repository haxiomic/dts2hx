package global._;

typedef CurriedFunction1<T1, R> = {
	@:overload(function(t1:T1):R { })
	@:selfCall
	function call():CurriedFunction1<T1, R>;
};