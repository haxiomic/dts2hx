package chart_js;

typedef CartesianParsedData = {
	var x : Float;
	var y : Float;
	@:optional
	var _stacks : haxe.DynamicAccess<Array<Float>>;
};