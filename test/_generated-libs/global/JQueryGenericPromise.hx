package global;
extern typedef JQueryGenericPromise<T> = {
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	function then<TResult1, TResult2>(?onfulfilled:(value:T) -> haxe.extern.EitherType<TResult1, ts.lib.PromiseLike<TResult1>>, ?onrejected:(reason:Any) -> haxe.extern.EitherType<TResult2, ts.lib.PromiseLike<TResult2>>):ts.lib.PromiseLike<haxe.extern.EitherType<TResult1, TResult2>>;
};