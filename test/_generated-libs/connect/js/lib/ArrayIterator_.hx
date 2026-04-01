package js.lib;

typedef ArrayIterator_<T> = {
	function next():IteratorResult<T, Dynamic>;
	@:optional
	@:native("return")
	function return_(?value:Dynamic):IteratorResult<T, Dynamic>;
	@:optional
	@:native("throw")
	function throw_(?e:Dynamic):IteratorResult<T, Dynamic>;
};