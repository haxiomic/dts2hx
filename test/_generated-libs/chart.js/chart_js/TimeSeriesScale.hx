package chart_js;

@:jsRequire("chart.js", "TimeSeriesScale") @:forward @:forwardStatics extern abstract TimeSeriesScale<O:(TimeScaleOptions)>(TimeScale<O>) from TimeScale<O> to TimeScale<O> {
	function new<O:(TimeScaleOptions)>(cfg:haxe.DynamicAccess<Any>);
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
	static var prototype : TimeSeriesScale<TimeScaleOptions>;
}