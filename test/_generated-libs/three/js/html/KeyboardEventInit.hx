package js.html;
extern typedef KeyboardEventInit = {
	@:optional
	var code : String;
	@:optional
	var isComposing : Bool;
	@:optional
	var key : String;
	@:optional
	var location : Float;
	@:optional
	var repeat : Bool;
	@:optional
	var altKey : Bool;
	@:optional
	var ctrlKey : Bool;
	@:optional
	var metaKey : Bool;
	@:optional
	var modifierAltGraph : Bool;
	@:optional
	var modifierCapsLock : Bool;
	@:optional
	var modifierFn : Bool;
	@:optional
	var modifierFnLock : Bool;
	@:optional
	var modifierHyper : Bool;
	@:optional
	var modifierNumLock : Bool;
	@:optional
	var modifierScrollLock : Bool;
	@:optional
	var modifierSuper : Bool;
	@:optional
	var modifierSymbol : Bool;
	@:optional
	var modifierSymbolLock : Bool;
	@:optional
	var shiftKey : Bool;
	@:optional
	var detail : Float;
	@:optional
	var view : IWindow;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};