package chart_js;

typedef TooltipLabelStyle = {
	var borderColor : Color;
	var backgroundColor : Color;
	/**
		Width of border line
	**/
	@:optional
	var borderWidth : Float;
	/**
		Border dash
	**/
	@:optional
	var borderDash : ts.Tuple2<Float, Float>;
	/**
		Border dash offset
	**/
	@:optional
	var borderDashOffset : Float;
	/**
		borderRadius
	**/
	@:optional
	var borderRadius : ts.AnyOf2<Float, BorderRadius>;
};