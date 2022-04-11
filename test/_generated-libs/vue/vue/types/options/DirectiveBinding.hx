package vue.types.options;

typedef DirectiveBinding = {
	final modifiers : haxe.DynamicAccess<Bool>;
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
};