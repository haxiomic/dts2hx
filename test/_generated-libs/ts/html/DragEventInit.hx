package ts.html;
typedef DragEventInit = {
	@:optional
	var dataTransfer : DataTransfer;
	@:optional
	var button : Float;
	@:optional
	var buttons : Float;
	@:optional
	var clientX : Float;
	@:optional
	var clientY : Float;
	@:optional
	var movementX : Float;
	@:optional
	var movementY : Float;
	@:optional
	var relatedTarget : EventTarget;
	@:optional
	var screenX : Float;
	@:optional
	var screenY : Float;
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
	var view : Window;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};