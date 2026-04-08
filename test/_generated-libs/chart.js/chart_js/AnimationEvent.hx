package chart_js;

typedef AnimationEvent = {
	var chart : Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>;
	var numSteps : Float;
	var currentState : Float;
};