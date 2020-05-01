package ts.lib;
extern typedef IterableIterator<T> = {
	function next(args:haxe.extern.Rest<Any>):ts.AnyOf2<IteratorYieldResult<T>, IteratorReturnResult<Any>>;
	@:native("return")
	@:optional
	function return_(?value:Any):ts.AnyOf2<IteratorYieldResult<T>, IteratorReturnResult<Any>>;
	@:native("throw")
	@:optional
	function throw_(?e:Any):ts.AnyOf2<IteratorYieldResult<T>, IteratorReturnResult<Any>>;
};