package ts.lib;
typedef IterableIterator<T> = {
	function next(args:haxe.extern.Rest<Any>):ts.AnyOf2<IteratorYieldResult<T>, IteratorReturnResult<Dynamic>>;
	@:native("return")
	@:optional
	function return_(?value:Dynamic):ts.AnyOf2<IteratorYieldResult<T>, IteratorReturnResult<Dynamic>>;
	@:native("throw")
	@:optional
	function throw_(?e:Dynamic):ts.AnyOf2<IteratorYieldResult<T>, IteratorReturnResult<Dynamic>>;
};