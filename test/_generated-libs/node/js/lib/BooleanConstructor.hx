package js.lib;
extern interface BooleanConstructor {
	@:selfCall
	function call<T>(?value:T):Bool;
	final prototype : Boolean;
}