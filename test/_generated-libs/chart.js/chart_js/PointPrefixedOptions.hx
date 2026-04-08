package chart_js;

typedef PointPrefixedOptions = {
	/**
		The fill color for points.
	**/
	var pointBackgroundColor : Color;
	/**
		The border color for points.
	**/
	var pointBorderColor : Color;
	/**
		The width of the point border in pixels.
	**/
	var pointBorderWidth : Float;
	/**
		The pixel size of the non-displayed point that reacts to mouse events.
	**/
	var pointHitRadius : Float;
	/**
		The radius of the point shape. If set to 0, the point is not rendered.
	**/
	var pointRadius : Float;
	/**
		The rotation of the point in degrees.
	**/
	var pointRotation : Float;
	/**
		Style of the point.
	**/
	var pointStyle : PointStyle;
};