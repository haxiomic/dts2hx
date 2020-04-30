package ts.html;
@:native("TextEvent") extern class TextEvent {
	function new();
	final data : String;
	function initTextEvent(typeArg:String, canBubbleArg:Bool, cancelableArg:Bool, viewArg:IWindow, dataArg:String, inputMethod:Float, locale:String):Void;
	final DOM_INPUT_METHOD_DROP : Float;
	final DOM_INPUT_METHOD_HANDWRITING : Float;
	final DOM_INPUT_METHOD_IME : Float;
	final DOM_INPUT_METHOD_KEYBOARD : Float;
	final DOM_INPUT_METHOD_MULTIMODAL : Float;
	final DOM_INPUT_METHOD_OPTION : Float;
	final DOM_INPUT_METHOD_PASTE : Float;
	final DOM_INPUT_METHOD_SCRIPT : Float;
	final DOM_INPUT_METHOD_UNKNOWN : Float;
	final DOM_INPUT_METHOD_VOICE : Float;
	static var prototype : ITextEvent;
	@:native("DOM_INPUT_METHOD_DROP")
	static final DOM_INPUT_METHOD_DROP_ : Float;
	@:native("DOM_INPUT_METHOD_HANDWRITING")
	static final DOM_INPUT_METHOD_HANDWRITING_ : Float;
	@:native("DOM_INPUT_METHOD_IME")
	static final DOM_INPUT_METHOD_IME_ : Float;
	@:native("DOM_INPUT_METHOD_KEYBOARD")
	static final DOM_INPUT_METHOD_KEYBOARD_ : Float;
	@:native("DOM_INPUT_METHOD_MULTIMODAL")
	static final DOM_INPUT_METHOD_MULTIMODAL_ : Float;
	@:native("DOM_INPUT_METHOD_OPTION")
	static final DOM_INPUT_METHOD_OPTION_ : Float;
	@:native("DOM_INPUT_METHOD_PASTE")
	static final DOM_INPUT_METHOD_PASTE_ : Float;
	@:native("DOM_INPUT_METHOD_SCRIPT")
	static final DOM_INPUT_METHOD_SCRIPT_ : Float;
	@:native("DOM_INPUT_METHOD_UNKNOWN")
	static final DOM_INPUT_METHOD_UNKNOWN_ : Float;
	@:native("DOM_INPUT_METHOD_VOICE")
	static final DOM_INPUT_METHOD_VOICE_ : Float;
}