package chart_js;

typedef LineControllerChartOptions = {
	/**
		If true, lines will be drawn between points with no or null data. If false, points with NaN data will create a break in the line. Can also be a number specifying the maximum gap length to span. The unit of the value depends on the scale used.
	**/
	var spanGaps : ts.AnyOf2<Float, Bool>;
	/**
		If false, the lines between points are not drawn.
	**/
	var showLine : Bool;
};