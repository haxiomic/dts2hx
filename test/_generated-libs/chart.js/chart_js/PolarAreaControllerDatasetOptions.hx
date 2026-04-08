package chart_js;

typedef PolarAreaControllerDatasetOptions = {
	/**
		Arc angle to cover. - for polar only
	**/
	var angle : Float;
	/**
		Sweep to allow arcs to cover.
	**/
	var circumference : Float;
	/**
		Starting angle to draw this dataset from.
	**/
	var rotation : Float;
	/**
		The relative thickness of the dataset. Providing a value for weight will cause the pie or doughnut dataset to be drawn with a thickness relative to the sum of all the dataset weight values.
	**/
	var weight : Float;
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
		Arc stroke alignment.
	**/
	var borderAlign : ScriptableAndArray<String, ScriptableContext<String>>;
	/**
		Arc offset (in pixels).
	**/
	var offset : ScriptableAndArray<Float, ScriptableContext<String>>;
	/**
		Sets the border radius for arcs
	**/
	var borderRadius : ScriptableAndArray<ts.AnyOf2<Float, ArcBorderRadius>, ScriptableContext<String>>;
	var borderWidth : ScriptableAndArray<Float, ScriptableContext<String>>;
	var borderColor : ScriptableAndArray<Color, ScriptableContext<String>>;
	var backgroundColor : ScriptableAndArray<Color, ScriptableContext<String>>;
	var hoverOffset : ScriptableAndArray<Float, ScriptableContext<String>>;
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