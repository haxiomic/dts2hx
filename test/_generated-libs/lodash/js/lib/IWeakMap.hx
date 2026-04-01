package js.lib;

typedef IWeakMap<K, V> = {
	/**
		Removes the specified element from the WeakMap.
	**/
	function delete(key:K):Bool;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	/**
		Adds a new element with a specified key and value.
	**/
	function set(key:K, value:V):WeakMap_<K, V>;
};