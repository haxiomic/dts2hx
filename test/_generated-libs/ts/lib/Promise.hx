package ts.lib;
/**
	Represents the completion of an asynchronous operation
**/
@:native("Promise") extern class Promise<T> {
	/**
		Creates a new Promise.
	**/
	function new(executor:(resolve:(?value:haxe.extern.EitherType<T, PromiseLike<T>>) -> Void, reject:(?reason:Any) -> Void) -> Void);
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> haxe.extern.EitherType<TResult1, PromiseLike<TResult1>>, ?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult2, PromiseLike<TResult2>>):IPromise<haxe.extern.EitherType<TResult1, TResult2>>;
	/**
		Attaches a callback for only the rejection of the Promise.
	**/
	@:native("catch")
	function catch_<TResult>(?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult, PromiseLike<TResult>>):IPromise<haxe.extern.EitherType<T, TResult>>;
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
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(values:ts.lib.Tuple10<haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>, haxe.extern.EitherType<T7, PromiseLike<T7>>, haxe.extern.EitherType<T8, PromiseLike<T8>>, haxe.extern.EitherType<T9, PromiseLike<T9>>, haxe.extern.EitherType<T10, PromiseLike<T10>>>):IPromise<ts.lib.Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8, T9>(values:ts.lib.Tuple9<haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>, haxe.extern.EitherType<T7, PromiseLike<T7>>, haxe.extern.EitherType<T8, PromiseLike<T8>>, haxe.extern.EitherType<T9, PromiseLike<T9>>>):IPromise<ts.lib.Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7, T8>(values:ts.lib.Tuple8<haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>, haxe.extern.EitherType<T7, PromiseLike<T7>>, haxe.extern.EitherType<T8, PromiseLike<T8>>>):IPromise<ts.lib.Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7>(values:ts.lib.Tuple7<haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>, haxe.extern.EitherType<T7, PromiseLike<T7>>>):IPromise<ts.lib.Tuple7<T1, T2, T3, T4, T5, T6, T7>> { })
	@:overload(function<T1, T2, T3, T4, T5, T6>(values:ts.lib.Tuple6<haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>, haxe.extern.EitherType<T6, PromiseLike<T6>>>):IPromise<ts.lib.Tuple6<T1, T2, T3, T4, T5, T6>> { })
	@:overload(function<T1, T2, T3, T4, T5>(values:ts.lib.Tuple5<haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>, haxe.extern.EitherType<T5, PromiseLike<T5>>>):IPromise<ts.lib.Tuple5<T1, T2, T3, T4, T5>> { })
	@:overload(function<T1, T2, T3, T4>(values:ts.lib.Tuple4<haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>, haxe.extern.EitherType<T4, PromiseLike<T4>>>):IPromise<ts.lib.Tuple4<T1, T2, T3, T4>> { })
	@:overload(function<T1, T2, T3>(values:ts.lib.Tuple3<haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>, haxe.extern.EitherType<T3, PromiseLike<T3>>>):IPromise<ts.lib.Tuple3<T1, T2, T3>> { })
	@:overload(function<T1, T2>(values:ts.lib.Tuple2<haxe.extern.EitherType<T1, PromiseLike<T1>>, haxe.extern.EitherType<T2, PromiseLike<T2>>>):IPromise<ts.lib.Tuple2<T1, T2>> { })
	@:overload(function<T>(values:ReadonlyArray<haxe.extern.EitherType<T, PromiseLike<T>>>):IPromise<std.Array<T>> { })
	static function all<TAll>(values:Iterable<haxe.extern.EitherType<TAll, PromiseLike<TAll>>>):IPromise<std.Array<TAll>>;
	/**
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
		
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
		
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
	**/
	@:overload(function<T>(values:ReadonlyArray<T>):IPromise<Any> { })
	@:overload(function<T>(values:Iterable<T>):IPromise<Any> { })
	static function race<T>(values:Iterable<haxe.extern.EitherType<T, PromiseLike<T>>>):IPromise<T>;
	/**
		A reference to the prototype.
	**/
	static final prototype : IPromise<Any>;
	/**
		Creates a new rejected promise for the provided reason.
	**/
	static function reject<T>(?reason:Any):IPromise<T>;
	/**
		Creates a new resolved promise for the provided value.
		
		Creates a new resolved promise .
	**/
	@:overload(function():IPromise<Void> { })
	static function resolve<T>(value:haxe.extern.EitherType<T, PromiseLike<T>>):IPromise<T>;
}