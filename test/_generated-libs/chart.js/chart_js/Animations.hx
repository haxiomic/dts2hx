package chart_js;

@:jsRequire("chart.js", "Animations") extern class Animations {
	function new(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, animations:haxe.DynamicAccess<Any>);
	function configure(animations:haxe.DynamicAccess<Any>):Void;
	function update(target:haxe.DynamicAccess<Any>, values:haxe.DynamicAccess<Any>):Null<Bool>;
	static var prototype : Animations;
}