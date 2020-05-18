package js.lib;

@:native("Boolean") extern class Boolean {
	function new(?value:Dynamic);
	/**
		Returns the primitive value of the specified object.
	**/
	function valueOf():Bool;
	@:selfCall
	static function call<T>(?value:T):Bool;
	static final prototype : Boolean;
}