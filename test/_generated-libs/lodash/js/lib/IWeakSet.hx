package js.lib;

typedef IWeakSet<T> = {
	function add(value:T):WeakSet_<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
};