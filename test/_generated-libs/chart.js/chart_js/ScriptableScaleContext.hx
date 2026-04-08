package chart_js;

typedef ScriptableScaleContext = {
	var chart : Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>;
	var scale : Scale<CoreScaleOptions>;
	var index : Float;
	var tick : Tick;
};