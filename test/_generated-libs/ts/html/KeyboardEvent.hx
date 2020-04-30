package ts.html;
/**
	KeyboardEvent objects describe a user interaction with the keyboard; each event describes a single interaction between the user and a key (or combination of a key with modifier keys) on the keyboard.
**/
@:native("KeyboardEvent") extern class KeyboardEvent {
	function new(type:String, ?eventInitDict:KeyboardEventInit);
	final altKey : Bool;
	var char : String;
	final charCode : Float;
	final code : String;
	final ctrlKey : Bool;
	final isComposing : Bool;
	final key : String;
	final keyCode : Float;
	final location : Float;
	final metaKey : Bool;
	final repeat : Bool;
	final shiftKey : Bool;
	function getModifierState(keyArg:String):Bool;
	final DOM_KEY_LOCATION_LEFT : Float;
	final DOM_KEY_LOCATION_NUMPAD : Float;
	final DOM_KEY_LOCATION_RIGHT : Float;
	final DOM_KEY_LOCATION_STANDARD : Float;
	static var prototype : IKeyboardEvent;
	@:native("DOM_KEY_LOCATION_LEFT")
	static final DOM_KEY_LOCATION_LEFT_ : Float;
	@:native("DOM_KEY_LOCATION_NUMPAD")
	static final DOM_KEY_LOCATION_NUMPAD_ : Float;
	@:native("DOM_KEY_LOCATION_RIGHT")
	static final DOM_KEY_LOCATION_RIGHT_ : Float;
	@:native("DOM_KEY_LOCATION_STANDARD")
	static final DOM_KEY_LOCATION_STANDARD_ : Float;
}