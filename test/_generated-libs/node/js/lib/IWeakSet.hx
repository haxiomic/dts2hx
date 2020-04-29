package js.lib;
extern typedef IWeakSet<T:(Any)> = {
	function add(value:T):IWeakSet<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
};