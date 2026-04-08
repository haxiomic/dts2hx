package chart_js;

@:jsRequire("chart.js", "PieController") @:forward @:forwardStatics extern abstract PieController(DoughnutController) from DoughnutController to DoughnutController {
	function new(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, datasetIndex:Float);
	static var id : String;
	@:optional
	static var defaults : haxe.DynamicAccess<Any>;
	@:optional
	static var defaultRoutes : haxe.DynamicAccess<String>;
	@:optional
	static function beforeRegister():Void;
	@:optional
	static function afterRegister():Void;
	@:optional
	static function beforeUnregister():Void;
	@:optional
	static function afterUnregister():Void;
	static var prototype : DoughnutController;
}