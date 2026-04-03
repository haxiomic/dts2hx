package undici_types;

typedef SpecIterableIterator<T> = {
	function next():js.lib.IteratorResult<T, Dynamic>;
};