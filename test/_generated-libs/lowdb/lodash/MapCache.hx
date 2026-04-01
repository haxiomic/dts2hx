package lodash;

/**
	Creates a cache object to store key/value pairs.
**/
typedef MapCache = {
	/**
		Removes `key` and its value from the cache.
	**/
	function delete(key:Dynamic):Bool;
	/**
		Gets the cached value for `key`.
	**/
	function get(key:Dynamic):Dynamic;
	/**
		Checks if a cached value for `key` exists.
	**/
	function has(key:Dynamic):Bool;
	/**
		Sets `value` to `key` of the cache.
	**/
	function set(key:Dynamic, value:Dynamic):MapCache;
	/**
		Removes all key-value entries from the map.
	**/
	@:optional
	dynamic function clear():Void;
};