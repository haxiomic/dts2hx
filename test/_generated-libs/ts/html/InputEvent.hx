package ts.html;
@:native("InputEvent") extern class InputEvent {
	function new(type:String, ?eventInitDict:InputEventInit);
	final data : Null<String>;
	final inputType : String;
	final isComposing : Bool;
	static var prototype : IInputEvent;
}