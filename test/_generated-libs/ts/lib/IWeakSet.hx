package ts.lib;
typedef IWeakSet<T> = {
	function add(value:T):IWeakSet<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
};