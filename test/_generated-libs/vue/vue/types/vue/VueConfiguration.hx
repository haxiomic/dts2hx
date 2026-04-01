package vue.types.vue;

typedef VueConfiguration = {
	var silent : Bool;
	var optionMergeStrategies : Dynamic;
	var devtools : Bool;
	var productionTip : Bool;
	var performance : Bool;
	function errorHandler(err:js.lib.Error, vm:Vue, info:String):Void;
	function warnHandler(msg:String, vm:Vue, trace:String):Void;
	var ignoredElements : Array<ts.AnyOf2<String, js.lib.RegExp>>;
	var keyCodes : haxe.DynamicAccess<ts.AnyOf2<Float, Array<Float>>>;
	var async : Bool;
};