package js.lib;

typedef BooleanConstructor = {
	function new(?value:Dynamic);
	@:selfCall
	function call<T>(?value:T):Bool;
	final prototype : Boolean;
};