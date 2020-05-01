package ts.lib;
/**
	Represents the completion of an asynchronous operation
**/
@:native("Promise") extern class Promise<T> {
	/**
		Creates a new Promise.
	**/
	function new(executor:(resolve:(?value:ts.AnyOf2<T, PromiseLike<T>>) -> Void, reject:(?reason:Dynamic) -> Void) -> Void);
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> ts.AnyOf2<TResult1, PromiseLike<TResult1>>, ?onrejected:(reason:Dynamic) -> ts.AnyOf2<TResult2, PromiseLike<TResult2>>):IPromise<ts.AnyOf2<TResult1, TResult2>>;
	/**
		Attaches a callback for only the rejection of the Promise.
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Dynamic) -> ts.AnyOf2<TResult, PromiseLike<TResult>>):IPromise<ts.AnyOf2<T, TResult>>;
	/**
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
		
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
	**/
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(values:ts.Tuple10<ts.AnyOf2<T1, PromiseLike<T1>>, ts.AnyOf2<T2, PromiseLike<T2>>, ts.AnyOf2<T3, PromiseLike<T3>>, ts.AnyOf2<T4, PromiseLike<T4>>, ts.AnyOf2<T5, PromiseLike<T5>>, ts.AnyOf2<T6, PromiseLike<T6>>, ts.AnyOf2<T7, PromiseLike<T7>>, ts.AnyOf2<T8, PromiseLike<T8>>, ts.AnyOf2<T9, PromiseLike<T9>>, ts.AnyOf2<T10, PromiseLike<T10>>>):IPromise<ts.Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8, T9>(values:ts.Tuple9<ts.AnyOf2<T1, PromiseLike<T1>>, ts.AnyOf2<T2, PromiseLike<T2>>, ts.AnyOf2<T3, PromiseLike<T3>>, ts.AnyOf2<T4, PromiseLike<T4>>, ts.AnyOf2<T5, PromiseLike<T5>>, ts.AnyOf2<T6, PromiseLike<T6>>, ts.AnyOf2<T7, PromiseLike<T7>>, ts.AnyOf2<T8, PromiseLike<T8>>, ts.AnyOf2<T9, PromiseLike<T9>>>):IPromise<ts.Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8>(values:ts.Tuple8<ts.AnyOf2<T1, PromiseLike<T1>>, ts.AnyOf2<T2, PromiseLike<T2>>, ts.AnyOf2<T3, PromiseLike<T3>>, ts.AnyOf2<T4, PromiseLike<T4>>, ts.AnyOf2<T5, PromiseLike<T5>>, ts.AnyOf2<T6, PromiseLike<T6>>, ts.AnyOf2<T7, PromiseLike<T7>>, ts.AnyOf2<T8, PromiseLike<T8>>>):IPromise<ts.Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7>(values:ts.Tuple7<ts.AnyOf2<T1, PromiseLike<T1>>, ts.AnyOf2<T2, PromiseLike<T2>>, ts.AnyOf2<T3, PromiseLike<T3>>, ts.AnyOf2<T4, PromiseLike<T4>>, ts.AnyOf2<T5, PromiseLike<T5>>, ts.AnyOf2<T6, PromiseLike<T6>>, ts.AnyOf2<T7, PromiseLike<T7>>>):IPromise<ts.Tuple7<T1, T2, T3, T4, T5, T6, T7>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6>(values:ts.Tuple6<ts.AnyOf2<T1, PromiseLike<T1>>, ts.AnyOf2<T2, PromiseLike<T2>>, ts.AnyOf2<T3, PromiseLike<T3>>, ts.AnyOf2<T4, PromiseLike<T4>>, ts.AnyOf2<T5, PromiseLike<T5>>, ts.AnyOf2<T6, PromiseLike<T6>>>):IPromise<ts.Tuple6<T1, T2, T3, T4, T5, T6>> { })
	@:overload(function<T1, T2, T3, T4, T5>(values:ts.Tuple5<ts.AnyOf2<T1, PromiseLike<T1>>, ts.AnyOf2<T2, PromiseLike<T2>>, ts.AnyOf2<T3, PromiseLike<T3>>, ts.AnyOf2<T4, PromiseLike<T4>>, ts.AnyOf2<T5, PromiseLike<T5>>>):IPromise<ts.Tuple5<T1, T2, T3, T4, T5>> { })
	@:overload(function<T1, T2, T3, T4>(values:ts.Tuple4<ts.AnyOf2<T1, PromiseLike<T1>>, ts.AnyOf2<T2, PromiseLike<T2>>, ts.AnyOf2<T3, PromiseLike<T3>>, ts.AnyOf2<T4, PromiseLike<T4>>>):IPromise<ts.Tuple4<T1, T2, T3, T4>> { })
	@:overload(function<T1, T2, T3>(values:ts.Tuple3<ts.AnyOf2<T1, PromiseLike<T1>>, ts.AnyOf2<T2, PromiseLike<T2>>, ts.AnyOf2<T3, PromiseLike<T3>>>):IPromise<ts.Tuple3<T1, T2, T3>> { })
	@:overload(function<T1, T2>(values:ts.Tuple2<ts.AnyOf2<T1, PromiseLike<T1>>, ts.AnyOf2<T2, PromiseLike<T2>>>):IPromise<ts.Tuple2<T1, T2>> { })
	@:overload(function<T>(values:ReadonlyArray<ts.AnyOf2<T, PromiseLike<T>>>):IPromise<std.Array<T>> { })
	static function all<TAll>(values:Iterable<ts.AnyOf2<TAll, PromiseLike<TAll>>>):IPromise<std.Array<TAll>>;
	/**
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
		
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
		
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
	**/
	@:overload(function<T>(values:ReadonlyArray<T>):IPromise<Dynamic> { })
	@:overload(function<T>(values:Iterable<T>):IPromise<Dynamic> { })
	static function race<T>(values:Iterable<ts.AnyOf2<T, PromiseLike<T>>>):IPromise<T>;
	/**
		A reference to the prototype.
	**/
	static final prototype : IPromise<Dynamic>;
	/**
		Creates a new rejected promise for the provided reason.
	**/
	static function reject<T>(?reason:Dynamic):IPromise<T>;
	/**
		Creates a new resolved promise for the provided value.
		
		Creates a new resolved promise .
	**/
	@:overload(function():IPromise<Void> { })
	static function resolve<T>(value:ts.AnyOf2<T, PromiseLike<T>>):IPromise<T>;
}