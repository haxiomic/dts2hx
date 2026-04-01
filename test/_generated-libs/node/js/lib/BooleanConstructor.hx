package js.lib;

typedef BooleanConstructor = {
	@:selfCall
	function call<T>(?value:T):Bool;
	final prototype : Boolean;
};