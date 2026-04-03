package undici_types;

typedef SpecIterator<T, TReturn, TNext> = {
	function next():js.lib.IteratorResult<T, TReturn>;
};