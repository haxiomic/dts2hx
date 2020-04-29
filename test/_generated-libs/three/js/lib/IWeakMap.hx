package js.lib;
extern typedef IWeakMap<K:(Any), V> = {
	function delete(key:K):Bool;
	function get(key:K):Null<V>;
	function has(key:K):Bool;
	function set(key:K, value:V):IWeakMap<K, V>;
};