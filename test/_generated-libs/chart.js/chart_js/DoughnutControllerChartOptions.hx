package chart_js;

typedef DoughnutControllerChartOptions = {
	/**
		Sweep to allow arcs to cover.
	**/
	var circumference : Float;
	/**
		The portion of the chart that is cut out of the middle. ('50%' - for doughnut, 0 - for pie)
		String ending with '%' means percentage, number means pixels.
	**/
	var cutout : Scriptable<ts.AnyOf2<String, Float>, ScriptableContext<String>>;
	/**
		The outer radius of the chart. String ending with '%' means percentage of maximum radius, number means pixels.
	**/
	var radius : Scriptable<ts.AnyOf2<String, Float>, ScriptableContext<String>>;
	/**
		Starting angle to draw arcs from.
	**/
	var rotation : Float;
	var animation : DoughnutAnimationOptions;
};