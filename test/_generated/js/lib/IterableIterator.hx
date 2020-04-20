package js.lib;
extern interface IterableIterator<T> extends Iterator<T, Any, Void> {
	@:native("__@iterator")
	function __AtIterator():IterableIterator<T>;
}