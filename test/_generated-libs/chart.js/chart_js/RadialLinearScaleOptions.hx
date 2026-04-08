package chart_js;

typedef RadialLinearScaleOptions = CoreScaleOptions & {
	var animate : Bool;
	var angleLines : {
		/**
			if true, angle lines are shown.
		**/
		var display : Bool;
		/**
			Color of angled lines.
		**/
		var color : Scriptable<Color, ScriptableScaleContext>;
		/**
			Width of angled lines.
		**/
		var lineWidth : Scriptable<Float, ScriptableScaleContext>;
		/**
			Length and spacing of dashes on angled lines. See MDN.
		**/
		var borderDash : Scriptable<Array<Float>, ScriptableScaleContext>;
		/**
			Offset for line dashes. See MDN.
		**/
		var borderDashOffset : Scriptable<Float, ScriptableScaleContext>;
	};
	/**
		if true, scale will include 0 if it is not already included.
	**/
	var beginAtZero : Bool;
	var grid : GridLineOptions;
	/**
		User defined minimum number for the scale, overrides minimum value from data.
	**/
	var min : Float;
	/**
		User defined maximum number for the scale, overrides maximum value from data.
	**/
	var max : Float;
	var pointLabels : {
		/**
			Background color of the point label.
		**/
		var backdropColor : Scriptable<Color, ScriptableScaleContext>;
		/**
			Padding of label backdrop.
		**/
		var backdropPadding : Scriptable<ts.AnyOf2<Float, ChartArea>, ScriptableScaleContext>;
		/**
			if true, point labels are shown.
		**/
		var display : Bool;
		/**
			Color of label
		**/
		var color : Scriptable<Color, ScriptableScaleContext>;
		var font : Scriptable<FontSpec, ScriptableScaleContext>;
		/**
			Callback function to transform data labels to point labels. The default implementation simply returns the current string.
		**/
		dynamic function callback(label:String, index:Float):String;
	};
	/**
		Adjustment used when calculating the maximum data value.
	**/
	var suggestedMax : Float;
	/**
		Adjustment used when calculating the minimum data value.
	**/
	var suggestedMin : Float;
	var ticks : TickOptions & {
		/**
			The Intl.NumberFormat options used by the default label formatter
		**/
		var format : js.lib.intl.NumberFormat.NumberFormatOptions;
		/**
			Maximum number of ticks and gridlines to show.
		**/
		var maxTicksLimit : Float;
		/**
			if defined and stepSize is not specified, the step size will be rounded to this many decimal places.
		**/
		var precision : Float;
		/**
			User defined fixed step size for the scale.
		**/
		var stepSize : Float;
		/**
			User defined number of ticks
		**/
		var count : Float;
	};
};