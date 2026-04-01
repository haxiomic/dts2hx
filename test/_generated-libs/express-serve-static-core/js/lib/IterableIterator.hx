package js.lib;

/**
	Describes a user-defined
	{@link
	Iterator
	}
	that is also iterable.
**/
typedef IterableIterator<T, TReturn, TNext> = {
	function next():IteratorResult<T, TReturn>;
	@:optional
	@:native("return")
	function return_(?value:TReturn):IteratorResult<T, TReturn>;
	@:optional
	@:native("throw")
	function throw_(?e:Dynamic):IteratorResult<T, TReturn>;
};