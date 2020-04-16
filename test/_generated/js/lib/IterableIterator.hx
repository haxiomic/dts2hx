package js.lib;
extern interface IterableIterator<T> {
	@:native("__@iterator")
	function __AtIterator():IterableIterator<T>;
}