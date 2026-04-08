package chart_js;

typedef LineOptions = {
	/**
		Line cap style. See MDN.
	**/
	var borderCapStyle : js.html.CanvasLineCap;
	/**
		Line dash. See MDN.
	**/
	var borderDash : Array<Float>;
	/**
		Line dash offset. See MDN.
	**/
	var borderDashOffset : Float;
	/**
		Line join style. See MDN.
	**/
	var borderJoinStyle : js.html.CanvasLineJoin;
	/**
		true to keep Bézier control inside the chart, false for no restriction.
	**/
	var capBezierPoints : Bool;
	/**
		Interpolation mode to apply.
	**/
	var cubicInterpolationMode : String;
	/**
		Bézier curve tension (0 for no Bézier curves).
	**/
	var tension : Float;
	/**
		true to show the line as a stepped line (tension will be ignored).
	**/
	var stepped : ts.AnyOf2<Bool, String>;
	var segment : {
		var backgroundColor : Scriptable<Null<Color>, ScriptableLineSegmentContext>;
		var borderColor : Scriptable<Null<Color>, ScriptableLineSegmentContext>;
		var borderCapStyle : Scriptable<Null<js.html.CanvasLineCap>, ScriptableLineSegmentContext>;
		var borderDash : Scriptable<Null<Array<Float>>, ScriptableLineSegmentContext>;
		var borderDashOffset : Scriptable<Null<Float>, ScriptableLineSegmentContext>;
		var borderJoinStyle : Scriptable<Null<js.html.CanvasLineJoin>, ScriptableLineSegmentContext>;
		var borderWidth : Scriptable<Null<Float>, ScriptableLineSegmentContext>;
	};
	var borderWidth : Float;
	var borderColor : Color;
	var backgroundColor : Color;
};