package chart_js;

typedef ElementOptionsByType<TType:(String)> = {
	var arc : {
		/**
			Arc stroke alignment.
		**/
		var borderAlign : ScriptableAndArray<String, ScriptableContext<TType>>;
		/**
			Arc offset (in pixels).
		**/
		var offset : ScriptableAndArray<Float, ScriptableContext<TType>>;
		/**
			Sets the border radius for arcs
		**/
		var borderRadius : ScriptableAndArray<ts.AnyOf2<Float, ArcBorderRadius>, ScriptableContext<TType>>;
		var borderWidth : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var borderColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var backgroundColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var hoverOffset : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var hoverBorderWidth : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var hoverBorderColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var hoverBackgroundColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
	};
	var bar : {
		/**
			The base value for the bar in data units along the value axis.
		**/
		var base : ScriptableAndArray<Float, ScriptableContext<TType>>;
		/**
			Skipped (excluded) border: 'start', 'end', 'left',  'right', 'bottom', 'top' or false (none).
		**/
		var borderSkipped : ScriptableAndArray<ts.AnyOf2<Bool, String>, ScriptableContext<TType>>;
		/**
			Border radius
		**/
		var borderRadius : ScriptableAndArray<ts.AnyOf2<Float, BorderRadius>, ScriptableContext<TType>>;
		var borderWidth : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var borderColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var backgroundColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var hoverBorderRadius : ScriptableAndArray<ts.AnyOf2<Float, BorderRadius>, ScriptableContext<TType>>;
		var hoverBorderWidth : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var hoverBorderColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var hoverBackgroundColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
	};
	var line : {
		/**
			Line cap style. See MDN.
		**/
		var borderCapStyle : ScriptableAndArray<js.html.CanvasLineCap, ScriptableContext<TType>>;
		/**
			Line dash. See MDN.
		**/
		var borderDash : ScriptableAndArray<Array<Float>, ScriptableContext<TType>>;
		/**
			Line dash offset. See MDN.
		**/
		var borderDashOffset : ScriptableAndArray<Float, ScriptableContext<TType>>;
		/**
			Line join style. See MDN.
		**/
		var borderJoinStyle : ScriptableAndArray<js.html.CanvasLineJoin, ScriptableContext<TType>>;
		/**
			true to keep Bézier control inside the chart, false for no restriction.
		**/
		var capBezierPoints : ScriptableAndArray<Bool, ScriptableContext<TType>>;
		/**
			Interpolation mode to apply.
		**/
		var cubicInterpolationMode : ScriptableAndArray<String, ScriptableContext<TType>>;
		/**
			Bézier curve tension (0 for no Bézier curves).
		**/
		var tension : ScriptableAndArray<Float, ScriptableContext<TType>>;
		/**
			true to show the line as a stepped line (tension will be ignored).
		**/
		var stepped : ScriptableAndArray<ts.AnyOf2<Bool, String>, ScriptableContext<TType>>;
		var segment : ScriptableAndArray<{
			var backgroundColor : Scriptable<Null<Color>, ScriptableLineSegmentContext>;
			var borderColor : Scriptable<Null<Color>, ScriptableLineSegmentContext>;
			var borderCapStyle : Scriptable<Null<js.html.CanvasLineCap>, ScriptableLineSegmentContext>;
			var borderDash : Scriptable<Null<Array<Float>>, ScriptableLineSegmentContext>;
			var borderDashOffset : Scriptable<Null<Float>, ScriptableLineSegmentContext>;
			var borderJoinStyle : Scriptable<Null<js.html.CanvasLineJoin>, ScriptableLineSegmentContext>;
			var borderWidth : Scriptable<Null<Float>, ScriptableLineSegmentContext>;
		}, ScriptableContext<TType>>;
		var borderWidth : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var borderColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var backgroundColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var hoverBorderCapStyle : ScriptableAndArray<js.html.CanvasLineCap, ScriptableContext<TType>>;
		var hoverBorderDash : ScriptableAndArray<Array<Float>, ScriptableContext<TType>>;
		var hoverBorderDashOffset : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var hoverBorderJoinStyle : ScriptableAndArray<js.html.CanvasLineJoin, ScriptableContext<TType>>;
		var hoverBorderWidth : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var hoverBorderColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var hoverBackgroundColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
	};
	var point : {
		/**
			Point radius
		**/
		var radius : ScriptableAndArray<Float, ScriptableContext<TType>>;
		/**
			Extra radius added to point radius for hit detection.
		**/
		var hitRadius : ScriptableAndArray<Float, ScriptableContext<TType>>;
		/**
			Point style
		**/
		var pointStyle : ScriptableAndArray<PointStyle, ScriptableContext<TType>>;
		/**
			Point rotation (in degrees).
		**/
		var rotation : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var borderWidth : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var borderColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var backgroundColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		/**
			Point radius when hovered.
		**/
		var hoverRadius : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var hoverBorderWidth : ScriptableAndArray<Float, ScriptableContext<TType>>;
		var hoverBorderColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
		var hoverBackgroundColor : ScriptableAndArray<Color, ScriptableContext<TType>>;
	};
};