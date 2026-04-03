package node.url;

typedef URLSearchParamsIteratorTypedef<T> = {
	function next():js.lib.IteratorResult<T, Dynamic>;
	@:optional
	@:native("return")
	function return_(?value:Dynamic):js.lib.IteratorResult<T, Dynamic>;
	@:optional
	@:native("throw")
	function throw_(?e:Dynamic):js.lib.IteratorResult<T, Dynamic>;
};