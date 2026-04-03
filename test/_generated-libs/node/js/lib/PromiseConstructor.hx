package js.lib;

typedef PromiseConstructor = {
	/**
		Creates a Promise that is resolved with an array of results when all of the provided Promises
		resolve, or rejected when any Promise is rejected.
	**/
	@:overload(function<T:(ts.AnyOf2<std.Array<Any>, haxe.ds.ReadOnlyArray<Any>>)>(values:T):js.lib.Promise<Dynamic> { })
	function all<T>(values:Iterable<ts.AnyOf2<PromiseLike<T>, T>>):js.lib.Promise<Array<Awaited<T>>>;
	/**
		Creates a Promise that is resolved or rejected when any of the provided Promises are resolved
		or rejected.
	**/
	@:overload(function<T:(ts.AnyOf2<std.Array<Any>, haxe.ds.ReadOnlyArray<Any>>)>(values:T):js.lib.Promise<Awaited<Dynamic>> { })
	function race<T>(values:Iterable<ts.AnyOf2<PromiseLike<T>, T>>):js.lib.Promise<Awaited<T>>;
	/**
		A reference to the prototype.
	**/
	final prototype : js.lib.Promise<Dynamic>;
	/**
		Creates a new rejected promise for the provided reason.
	**/
	function reject<T>(?reason:Dynamic):js.lib.Promise<T>;
	/**
		Creates a new resolved promise.
		
		Creates a new resolved promise for the provided value.
	**/
	@:overload(function<T>(value:T):js.lib.Promise<Awaited<T>> { })
	@:overload(function<T>(value:ts.AnyOf2<PromiseLike<T>, T>):js.lib.Promise<Awaited<T>> { })
	function resolve():js.lib.Promise<ts.Undefined>;
	/**
		Creates a Promise that is resolved with an array of results when all
		of the provided Promises resolve or reject.
	**/
	@:overload(function<T>(values:Iterable<ts.AnyOf2<PromiseLike<T>, T>>):js.lib.Promise<Array<PromiseSettledResult<Awaited<T>>>> { })
	function allSettled<T:(ts.AnyOf2<std.Array<Any>, haxe.ds.ReadOnlyArray<Any>>)>(values:T):js.lib.Promise<Dynamic>;
};