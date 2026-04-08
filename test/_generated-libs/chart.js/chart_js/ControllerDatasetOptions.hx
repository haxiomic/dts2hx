package chart_js;

typedef ControllerDatasetOptions = {
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
};