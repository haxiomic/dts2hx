package chart_js;

typedef PointOptions = {
	/**
		Point radius
	**/
	var radius : Float;
	/**
		Extra radius added to point radius for hit detection.
	**/
	var hitRadius : Float;
	/**
		Point style
	**/
	var pointStyle : PointStyle;
	/**
		Point rotation (in degrees).
	**/
	var rotation : Float;
	var borderWidth : Float;
	var borderColor : Color;
	var backgroundColor : Color;
};