package chart_js;

typedef BarParsedData = {
	@:optional
	var _custom : {
		var barStart : Float;
		var barEnd : Float;
		var start : Float;
		var end : Float;
		var min : Float;
		var max : Float;
	};
	var x : Float;
	var y : Float;
	@:optional
	var _stacks : haxe.DynamicAccess<Array<Float>>;
};