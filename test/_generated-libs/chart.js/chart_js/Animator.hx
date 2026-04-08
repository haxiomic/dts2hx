package chart_js;

@:jsRequire("chart.js", "Animator") extern class Animator {
	function new();
	function listen(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, event:String, cb:(event:AnimationEvent) -> Void):Void;
	function add(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, items:haxe.ds.ReadOnlyArray<Animation>):Void;
	function has(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Bool;
	function start(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Void;
	function running(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Bool;
	function stop(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Void;
	function remove(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Bool;
	static var prototype : Animator;
}