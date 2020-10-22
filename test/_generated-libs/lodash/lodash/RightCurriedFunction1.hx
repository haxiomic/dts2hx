package lodash;

typedef RightCurriedFunction1<T1, R> = {
	@:overload(function(t1:T1):R { })
	@:selfCall
	function call():RightCurriedFunction1<T1, R>;
};