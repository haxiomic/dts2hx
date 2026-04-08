package chart_js;

typedef BubbleParsedData = {
	var _custom : Float;
	var x : Float;
	var y : Float;
	@:optional
	var _stacks : haxe.DynamicAccess<Array<Float>>;
};