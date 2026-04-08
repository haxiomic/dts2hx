package chart_js;

typedef BarControllerDatasetOptions = {
	/**
		The ID of the x axis to plot this dataset on.
	**/
	var xAxisID : String;
	/**
		The ID of the y axis to plot this dataset on.
	**/
	var yAxisID : String;
	/**
		Percent (0-1) of the available width each bar should be within the category width. 1.0 will take the whole category width and put the bars right next to each other.
	**/
	var barPercentage : Float;
	/**
		Percent (0-1) of the available width each category should be within the sample width.
	**/
	var categoryPercentage : Float;
	/**
		Manually set width of each bar in pixels. If set to 'flex', it computes "optimal" sample widths that globally arrange bars side by side. If not set (default), bars are equally sized based on the smallest interval.
	**/
	var barThickness : ts.AnyOf2<Float, String>;
	/**
		Set this to ensure that bars are not sized thicker than this.
	**/
	var maxBarThickness : Float;
	/**
		Set this to ensure that bars have a minimum length in pixels.
	**/
	var minBarLength : Float;
	/**
		Point style for the legend
	**/
	var pointStyle : PointStyle;
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
		The base value for the bar in data units along the value axis.
	**/
	var base : ScriptableAndArray<Float, ScriptableContext<String>>;
	/**
		Skipped (excluded) border: 'start', 'end', 'left',  'right', 'bottom', 'top' or false (none).
	**/
	var borderSkipped : ScriptableAndArray<ts.AnyOf2<Bool, String>, ScriptableContext<String>>;
	/**
		Border radius
	**/
	var borderRadius : ScriptableAndArray<ts.AnyOf2<Float, BorderRadius>, ScriptableContext<String>>;
	var borderWidth : ScriptableAndArray<Float, ScriptableContext<String>>;
	var borderColor : ScriptableAndArray<Color, ScriptableContext<String>>;
	var backgroundColor : ScriptableAndArray<Color, ScriptableContext<String>>;
	var hoverBorderWidth : ScriptableAndArray<Float, ScriptableContext<String>>;
	var hoverBorderColor : ScriptableAndArray<Color, ScriptableContext<String>>;
	var hoverBackgroundColor : ScriptableAndArray<Color, ScriptableContext<String>>;
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