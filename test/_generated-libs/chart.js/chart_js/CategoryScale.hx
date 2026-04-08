package chart_js;

@:jsRequire("chart.js", "CategoryScale") @:forward @:forwardStatics extern abstract CategoryScale<O:(CategoryScaleOptions)>(Scale<O>) from Scale<O> to Scale<O> {
	function new<O:(CategoryScaleOptions)>(cfg:haxe.DynamicAccess<Any>);
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
	static var prototype : CategoryScale<CategoryScaleOptions>;
}