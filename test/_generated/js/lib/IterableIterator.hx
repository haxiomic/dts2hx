package js.lib;
extern interface IterableIterator<T> {
	@:native("__@iterator")
	function __AtIterator():IterableIterator<T>;
	function next(args:haxe.extern.EitherType<Array<Any>, js.lib.Tuple1<TNext, TNext>>):haxe.extern.EitherType<IteratorYieldResult<T>, IteratorReturnResult<TReturn>>;
	@:native("return")
	@:optional
	function return_(?value:TReturn):haxe.extern.EitherType<IteratorYieldResult<T>, IteratorReturnResult<TReturn>>;
	@:native("throw")
	@:optional
	function throw_(?e:Any):haxe.extern.EitherType<IteratorYieldResult<T>, IteratorReturnResult<TReturn>>;
}