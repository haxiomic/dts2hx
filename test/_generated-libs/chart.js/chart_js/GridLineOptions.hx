package chart_js;

typedef GridLineOptions = {
	var display : Bool;
	var borderColor : Color;
	var borderWidth : Float;
	var circular : Bool;
	var color : ts.AnyOf5<String, js.html.CanvasGradient, js.html.CanvasPattern, haxe.ds.ReadOnlyArray<Color>, (ctx:ScriptableScaleContext, options:haxe.DynamicAccess<Any>) -> Color>;
	var borderDash : Array<Float>;
	var borderDashOffset : Scriptable<Float, ScriptableScaleContext>;
	var lineWidth : ts.AnyOf3<Float, haxe.ds.ReadOnlyArray<Float>, (ctx:ScriptableScaleContext, options:haxe.DynamicAccess<Any>) -> Float>;
	var drawBorder : Bool;
	var drawOnChartArea : Bool;
	var drawTicks : Bool;
	var tickBorderDash : Array<Float>;
	var tickBorderDashOffset : Scriptable<Float, ScriptableScaleContext>;
	var tickColor : ts.AnyOf5<String, js.html.CanvasGradient, js.html.CanvasPattern, haxe.ds.ReadOnlyArray<Color>, (ctx:ScriptableScaleContext, options:haxe.DynamicAccess<Any>) -> Color>;
	var tickLength : Float;
	var tickWidth : Float;
	var offset : Bool;
};