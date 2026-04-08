package chart_js;

typedef RadarControllerDatasetOptions = {
	/**
		The ID of the x axis to plot this dataset on.
	**/
	var xAxisID : String;
	/**
		The ID of the y axis to plot this dataset on.
	**/
	var yAxisID : String;
	/**
		If true, lines will be drawn between points with no or null data. If false, points with NaN data will create a break in the line. Can also be a number specifying the maximum gap length to span. The unit of the value depends on the scale used.
	**/
	var spanGaps : ts.AnyOf2<Float, Bool>;
	/**
		If false, the line is not drawn for this dataset.
	**/
	var showLine : Bool;
	/**
		The base axis of the chart. 'x' for vertical charts and 'y' for horizontal charts.
	**/
	var indexAxis : String;
	/**
		How to clip relative to chartArea. Positive value allows overflow, negative value clips that many pixels inside chartArea. 0 = clip at chartArea. Clipping can also be configured per side: clip: {left: 5, top: false, right: -2, bottom: 0}
	**/
	var clip : ts.AnyOf2<Float, ChartArea>;
	/**
		The label for the dataset which appears in the legend and tooltips.
	**/
	var label : String;
	/**
		The drawing order of dataset. Also affects order for stacking, tooltip and legend.
	**/
	var order : Float;
	/**
		The ID of the group to which this dataset belongs to (when stacked, each group will be a separate stack).
	**/
	var stack : String;
	/**
		Configures the visibility state of the dataset. Set it to true, to hide the dataset from the chart.
	**/
	var hidden : Bool;
	/**
		How to parse the dataset. The parsing can be disabled by specifying parsing: false at chart options or dataset. If parsing is disabled, data must be sorted and in the formats the associated chart type and scales use internally.
	**/
	var parsing : ts.AnyOf2<Bool, haxe.DynamicAccess<String>>;
	/**
		Chart.js is fastest if you provide data with indices that are unique, sorted, and consistent across datasets and provide the normalized: true option to let Chart.js know that you have done so.
	**/
	var normalized : Bool;
	/**
		The fill color for points.
	**/
	var pointBackgroundColor : Scriptable<Color, ScriptableContext<String>>;
	/**
		The border color for points.
	**/
	var pointBorderColor : Scriptable<Color, ScriptableContext<String>>;
	/**
		The width of the point border in pixels.
	**/
	var pointBorderWidth : Scriptable<Float, ScriptableContext<String>>;
	/**
		The pixel size of the non-displayed point that reacts to mouse events.
	**/
	var pointHitRadius : Scriptable<Float, ScriptableContext<String>>;
	/**
		The radius of the point shape. If set to 0, the point is not rendered.
	**/
	var pointRadius : Scriptable<Float, ScriptableContext<String>>;
	/**
		The rotation of the point in degrees.
	**/
	var pointRotation : Scriptable<Float, ScriptableContext<String>>;
	/**
		Style of the point.
	**/
	var pointStyle : Scriptable<PointStyle, ScriptableContext<String>>;
	/**
		Point background color when hovered.
	**/
	var pointHoverBackgroundColor : Scriptable<Color, ScriptableContext<String>>;
	/**
		Point border color when hovered.
	**/
	var pointHoverBorderColor : Scriptable<Color, ScriptableContext<String>>;
	/**
		Border width of point when hovered.
	**/
	var pointHoverBorderWidth : Scriptable<Float, ScriptableContext<String>>;
	/**
		The radius of the point when hovered.
	**/
	var pointHoverRadius : Scriptable<Float, ScriptableContext<String>>;
	/**
		Line cap style. See MDN.
	**/
	var borderCapStyle : Scriptable<js.html.CanvasLineCap, ScriptableContext<String>>;
	/**
		Line dash. See MDN.
	**/
	var borderDash : Scriptable<Array<Float>, ScriptableContext<String>>;
	/**
		Line dash offset. See MDN.
	**/
	var borderDashOffset : Scriptable<Float, ScriptableContext<String>>;
	/**
		Line join style. See MDN.
	**/
	var borderJoinStyle : Scriptable<js.html.CanvasLineJoin, ScriptableContext<String>>;
	/**
		true to keep Bézier control inside the chart, false for no restriction.
	**/
	var capBezierPoints : Scriptable<Bool, ScriptableContext<String>>;
	/**
		Interpolation mode to apply.
	**/
	var cubicInterpolationMode : Scriptable<String, ScriptableContext<String>>;
	/**
		Bézier curve tension (0 for no Bézier curves).
	**/
	var tension : Scriptable<Float, ScriptableContext<String>>;
	/**
		true to show the line as a stepped line (tension will be ignored).
	**/
	var stepped : Scriptable<ts.AnyOf2<Bool, String>, ScriptableContext<String>>;
	var segment : Scriptable<{
		var backgroundColor : Scriptable<Null<Color>, ScriptableLineSegmentContext>;
		var borderColor : Scriptable<Null<Color>, ScriptableLineSegmentContext>;
		var borderCapStyle : Scriptable<Null<js.html.CanvasLineCap>, ScriptableLineSegmentContext>;
		var borderDash : Scriptable<Null<Array<Float>>, ScriptableLineSegmentContext>;
		var borderDashOffset : Scriptable<Null<Float>, ScriptableLineSegmentContext>;
		var borderJoinStyle : Scriptable<Null<js.html.CanvasLineJoin>, ScriptableLineSegmentContext>;
		var borderWidth : Scriptable<Null<Float>, ScriptableLineSegmentContext>;
	}, ScriptableContext<String>>;
	var borderWidth : Scriptable<Float, ScriptableContext<String>>;
	var borderColor : Scriptable<Color, ScriptableContext<String>>;
	var backgroundColor : Scriptable<Color, ScriptableContext<String>>;
	var hoverBorderCapStyle : Scriptable<js.html.CanvasLineCap, ScriptableContext<String>>;
	var hoverBorderDash : Scriptable<Array<Float>, ScriptableContext<String>>;
	var hoverBorderDashOffset : Scriptable<Float, ScriptableContext<String>>;
	var hoverBorderJoinStyle : Scriptable<js.html.CanvasLineJoin, ScriptableContext<String>>;
	var hoverBorderWidth : Scriptable<Float, ScriptableContext<String>>;
	var hoverBorderColor : Scriptable<Color, ScriptableContext<String>>;
	var hoverBackgroundColor : Scriptable<Color, ScriptableContext<String>>;
	var animation : ts.AnyOf2<Bool, AnimationSpec<String> & {
		/**
			Callback called on each step of an animation.
		**/
		@:optional
		dynamic function onProgress(event:AnimationEvent):Void;
		/**
			Callback called when all animations are completed.
		**/
		@:optional
		dynamic function onComplete(event:AnimationEvent):Void;
	}>;
	var animations : AnimationsSpec<String>;
	var transitions : TransitionsSpec<String>;
};