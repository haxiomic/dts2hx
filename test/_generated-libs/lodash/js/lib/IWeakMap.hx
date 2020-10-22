package js.lib;

typedef IWeakMap<K, V> = {
	function delete(key:K):Bool;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	function set(key:K, value:V):WeakMap<K, V>;
};