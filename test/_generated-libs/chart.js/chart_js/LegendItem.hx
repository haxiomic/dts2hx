package chart_js;

typedef LegendItem = {
	/**
		Label that will be displayed
	**/
	var text : String;
	/**
		Border radius of the legend box
	**/
	@:optional
	var borderRadius : ts.AnyOf2<Float, BorderRadius>;
	/**
		Index of the associated dataset
	**/
	var datasetIndex : Float;
	/**
		Fill style of the legend box
	**/
	@:optional
	var fillStyle : Color;
	/**
		Font color for the text
		Defaults to LegendOptions.labels.color
	**/
	@:optional
	var fontColor : Color;
	/**
		If true, this item represents a hidden dataset. Label will be rendered with a strike-through effect
	**/
	@:optional
	var hidden : Bool;
	/**
		For box border.
	**/
	@:optional
	var lineCap : js.html.CanvasLineCap;
	/**
		For box border.
	**/
	@:optional
	var lineDash : Array<Float>;
	/**
		For box border.
	**/
	@:optional
	var lineDashOffset : Float;
	/**
		For box border.
	**/
	@:optional
	var lineJoin : js.html.CanvasLineJoin;
	/**
		Width of box border
	**/
	@:optional
	var lineWidth : Float;
	/**
		Stroke style of the legend box
	**/
	@:optional
	var strokeStyle : Color;
	/**
		Point style of the legend box (only used if usePointStyle is true)
	**/
	@:optional
	var pointStyle : PointStyle;
	/**
		Rotation of the point in degrees (only used if usePointStyle is true)
	**/
	@:optional
	var rotation : Float;
	/**
		Text alignment
	**/
	@:optional
	var textAlign : TextAlign;
};