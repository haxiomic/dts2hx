package js.lib;

typedef IWeakSet<T> = {
	function add(value:T):WeakSet<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
};