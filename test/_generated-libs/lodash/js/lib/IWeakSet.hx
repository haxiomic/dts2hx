package js.lib;

typedef IWeakSet<T> = {
	/**
		Appends a new value to the end of the WeakSet.
	**/
	function add(value:T):WeakSet_<T>;
	/**
		Removes the specified element from the WeakSet.
	**/
	function delete(value:T):Bool;
	function has(value:T):Bool;
};