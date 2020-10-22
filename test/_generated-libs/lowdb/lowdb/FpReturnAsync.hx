package lowdb;

typedef FpReturnAsync<PathT> = {
	/**
		Execute a series of functions on the data at a given path.
		Result of previous function is the input of the next one.
		Returns the result of the last function.
	**/
	@:overload(function<R1, R2>(f1:ts.Tuple2<(a1:PathT) -> R1, (a:R1) -> R2>):R2 { })
	@:overload(function<R1, R2, R3>(f1:ts.Tuple3<(a1:PathT) -> R1, (a:R1) -> R2, (a:R2) -> R3>):R3 { })
	@:overload(function<R1, R2, R3, R4>(f1:ts.Tuple4<(a1:PathT) -> R1, (a:R1) -> R2, (a:R2) -> R3, (a:R3) -> R4>):R4 { })
	@:overload(function<R1, R2, R3, R4, R5>(f1:ts.Tuple5<(a1:PathT) -> R1, (a:R1) -> R2, (a:R2) -> R3, (a:R3) -> R4, (a:R4) -> R5>):R5 { })
	@:overload(function<R1, R2, R3, R4, R5, R6>(f1:ts.Tuple6<(a1:PathT) -> R1, (a:R1) -> R2, (a:R2) -> R3, (a:R3) -> R4, (a:R4) -> R5, (a:R5) -> R6>):R6 { })
	@:overload(function<R1, R2, R3, R4, R5, R6, R7>(f1:ts.Tuple7<(a1:PathT) -> R1, (a:R1) -> R2, (a:R2) -> R3, (a:R3) -> R4, (a:R4) -> R5, (a:R5) -> R6, (a:R6) -> R7>):R7 { })
	@:overload(function(funcs:Array<(a:Dynamic) -> Dynamic>):Dynamic { })
	@:selfCall
	function call<R1>(f1:(a1:PathT) -> R1):R1;
	function write<R1>(f1:(a1:PathT) -> R1):js.lib.Promise<R1>;
};