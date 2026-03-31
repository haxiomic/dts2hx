package js.lib;

typedef IWeakSet<T:(Dynamic)> = {
	function add(value:T):WeakSet_<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
};