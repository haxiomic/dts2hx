package ts.lib;

typedef PromiseLike<T> = {
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> ts.AnyOf2<TResult1, PromiseLike<TResult1>>, ?onrejected:(reason:Dynamic) -> ts.AnyOf2<TResult2, PromiseLike<TResult2>>):PromiseLike<ts.AnyOf2<TResult1, TResult2>>;
};