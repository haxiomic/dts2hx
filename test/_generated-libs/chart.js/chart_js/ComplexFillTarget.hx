package chart_js;

typedef ComplexFillTarget = {
	/**
		The accepted values are the same as the filling mode values, so you may use absolute and relative dataset indexes and/or boundaries.
	**/
	var target : FillTarget;
	/**
		If no color is set, the default color will be the background color of the chart.
	**/
	var above : Color;
	/**
		Same as the above.
	**/
	var below : Color;
};