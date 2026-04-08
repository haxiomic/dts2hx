package chart_js;

typedef TimeScaleOptions = CartesianScaleOptions & {
	/**
		Scale boundary strategy (bypassed by min/max time options)
		- `data`: make sure data are fully visible, ticks outside are removed
		- `ticks`: make sure ticks are fully visible, data outside are truncated
	**/
	var bounds : String;
	/**
		options for creating a new adapter instance
	**/
	var adapters : {
		var date : Any;
	};
	var time : {
		/**
			Custom parser for dates.
		**/
		var parser : ts.AnyOf2<String, (v:Any) -> Float>;
		/**
			If defined, dates will be rounded to the start of this unit. See Time Units below for the allowed units.
		**/
		var round : ts.AnyOf2<Bool, String>;
		/**
			If boolean and true and the unit is set to 'week', then the first day of the week will be Monday. Otherwise, it will be Sunday.
			If `number`, the index of the first day of the week (0 - Sunday, 6 - Saturday).
		**/
		var isoWeekday : ts.AnyOf2<Float, Bool>;
		/**
			Sets how different time units are displayed.
		**/
		var displayFormats : haxe.DynamicAccess<String>;
		/**
			The format string to use for the tooltip.
		**/
		var tooltipFormat : String;
		/**
			If defined, will force the unit to be a certain type. See Time Units section below for details.
		**/
		var unit : ts.AnyOf2<Bool, String>;
		/**
			The number of units between grid lines.
		**/
		var stepSize : Float;
		/**
			The minimum display format to be used for a time unit.
		**/
		var minUnit : TimeUnit;
	};
	var ticks : {
		/**
			Ticks generation input values:
			- 'auto': generates "optimal" ticks based on scale size and time options.
			- 'data': generates ticks from data (including labels from data {t|x|y} objects).
			- 'labels': generates ticks from user given `data.labels` values ONLY.
		**/
		var source : String;
	};
};