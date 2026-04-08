package chart_js;

typedef LinearScaleOptions = CartesianScaleOptions & {
	/**
		if true, scale will include 0 if it is not already included.
	**/
	var beginAtZero : Bool;
	/**
		Adjustment used when calculating the maximum data value.
	**/
	@:optional
	var suggestedMin : Float;
	/**
		Adjustment used when calculating the minimum data value.
	**/
	@:optional
	var suggestedMax : Float;
	/**
		Percentage (string ending with %) or amount (number) for added room in the scale range above and below data.
	**/
	@:optional
	var grace : ts.AnyOf2<String, Float>;
	var ticks : {
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
			User defined fixed step size for the scale
		**/
		var stepSize : Float;
		/**
			User defined count of ticks
		**/
		var count : Float;
	};
};