package vue;

typedef VNodeDirective = {
	var name : String;
	@:optional
	var value : Dynamic;
	@:optional
	var oldValue : Dynamic;
	@:optional
	var expression : Dynamic;
	@:optional
	var arg : String;
	@:optional
	var oldArg : String;
	@:optional
	var modifiers : haxe.DynamicAccess<Bool>;
};