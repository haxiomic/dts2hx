package chart_js;

typedef LogarithmicScaleOptions = CartesianScaleOptions & {
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
	var ticks : {
		/**
			The Intl.NumberFormat options used by the default label formatter
		**/
		var format : js.lib.intl.NumberFormat.NumberFormatOptions;
	};
};