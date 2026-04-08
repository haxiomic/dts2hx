package chart_js;

typedef DatasetControllerChartComponent = {
	var defaults : {
		@:optional
		var datasetElementType : ts.AnyOf2<String, Bool>;
		@:optional
		var dataElementType : ts.AnyOf2<String, Bool>;
	};
	var id : String;
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