package chart_js;

typedef ChartComponent = {
	var id : String;
	@:optional
	var defaults : haxe.DynamicAccess<Any>;
	@:optional
	var defaultRoutes : haxe.DynamicAccess<String>;
	@:optional
	function beforeRegister():Void;
	@:optional
	function afterRegister():Void;
	@:optional
	function beforeUnregister():Void;
	@:optional
	function afterUnregister():Void;
};