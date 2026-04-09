package chart_js;

typedef LogarithmicScaleOptions = {
	/**
		Position of the axis.
	**/
	var position : ts.AnyOf2<String, haxe.DynamicAccess<Float>>;
	/**
		Which type of axis this is. Possible values are: 'x', 'y'. If not set, this is inferred from the first character of the ID which should be 'x' or 'y'.
	**/
	var axis : String;
	/**
		User defined minimum value for the scale, overrides minimum value from data.
	**/
	var min : Float;
	/**
		User defined maximum value for the scale, overrides maximum value from data.
	**/
	var max : Float;
	/**
		If true, extra space is added to the both edges and the axis is scaled to fit into the chart area. This is set to true for a bar chart by default.
	**/
	var offset : Bool;
	var grid : GridLineOptions;
	var title : {
		var display : Bool;
		var text : ts.AnyOf2<String, Array<String>>;
		var color : Color;
		var font : FontSpec;
		var padding : {
			var top : Float;
			var bottom : Float;
		};
	};
	/**
		If true, data will be comprised between datasets of data
	**/
	@:optional
	var stacked : ts.AnyOf2<Bool, String>;
	var ticks : {
		/**
			Color of label backdrops.
		**/
		var backdropColor : Scriptable<Color, ScriptableScaleContext>;
		/**
			Padding of tick backdrop.
		**/
		var backdropPadding : ts.AnyOf2<Float, ChartArea>;
		/**
			Returns the string representation of the tick value as it should be displayed on the chart. See callback.
		**/
		dynamic function callback(tickValue:ts.AnyOf2<String, Float>, index:Float, ticks:Array<Tick>):Null<ts.AnyOf2<String, Float>>;
		/**
			If true, show tick labels.
		**/
		var display : Bool;
		/**
			Color of tick
		**/
		var color : Scriptable<Color, ScriptableScaleContext>;
		/**
			see Fonts
		**/
		var font : Scriptable<FontSpec, ScriptableScaleContext>;
		/**
			Sets the offset of the tick labels from the axis
			
			Padding between the tick label and the axis. When set on a vertical axis, this applies in the horizontal (X) direction. When set on a horizontal axis, this applies in the vertical (Y) direction.
		**/
		var padding : Float;
		/**
			If true, draw a background behind the tick labels.
		**/
		var showLabelBackdrop : Scriptable<Bool, ScriptableScaleContext>;
		/**
			The color of the stroke around the text.
		**/
		var textStrokeColor : Scriptable<Color, ScriptableScaleContext>;
		/**
			Stroke width around the text.
		**/
		var textStrokeWidth : Scriptable<Float, ScriptableScaleContext>;
		/**
			z-index of tick layer. Useful when ticks are drawn on chart area. Values <= 0 are drawn under datasets, > 0 on top.
		**/
		var z : Float;
		var major : {
			/**
				If true, major ticks are generated. A major tick will affect autoskipping and major will be defined on ticks in the scriptable options context.
			**/
			var enabled : Bool;
		};
		/**
			The number of ticks to examine when deciding how many labels will fit. Setting a smaller value will be faster, but may be less accurate when there is large variability in label length.
		**/
		var sampleSize : Float;
		/**
			The label alignment
		**/
		var align : String;
		/**
			If true, automatically calculates how many labels can be shown and hides labels accordingly. Labels will be rotated up to maxRotation before skipping any. Turn autoSkip off to show all labels no matter what.
		**/
		var autoSkip : Bool;
		/**
			Padding between the ticks on the horizontal axis when autoSkip is enabled.
		**/
		var autoSkipPadding : Float;
		/**
			How is the label positioned perpendicular to the axis direction.
			This only applies when the rotation is 0 and the axis position is one of "top", "left", "right", or "bottom"
		**/
		var crossAlign : String;
		/**
			Should the defined `min` and `max` values be presented as ticks even if they are not "nice".
		**/
		var includeBounds : Bool;
		/**
			Distance in pixels to offset the label from the centre point of the tick (in the x direction for the x axis, and the y direction for the y axis). Note: this can cause labels at the edges to be cropped by the edge of the canvas
		**/
		var labelOffset : Float;
		/**
			Minimum rotation for tick labels. Note: Only applicable to horizontal scales.
		**/
		var minRotation : Float;
		/**
			Maximum rotation for tick labels when rotating to condense labels. Note: Rotation doesn't occur until necessary. Note: Only applicable to horizontal scales.
		**/
		var maxRotation : Float;
		/**
			Flips tick labels around axis, displaying the labels inside the chart instead of outside. Note: Only applicable to vertical scales.
		**/
		var mirror : Bool;
		/**
			The Intl.NumberFormat options used by the default label formatter
		**/
		var format : js.lib.intl.NumberFormat.NumberFormatOptions;
	};
	/**
		Controls the axis global visibility (visible when true, hidden when false). When display: 'auto', the axis is visible only if at least one associated dataset is visible.
	**/
	var display : ts.AnyOf2<Bool, String>;
	/**
		Align pixel values to device pixels
	**/
	var alignToPixels : Bool;
	/**
		Reverse the scale.
	**/
	var reverse : Bool;
	/**
		The weight used to sort the axis. Higher weights are further away from the chart area.
	**/
	var weight : Float;
	/**
		Callback called before the update process starts.
	**/
	function beforeUpdate(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs before dimensions are set.
	**/
	function beforeSetDimensions(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs after dimensions are set.
	**/
	function afterSetDimensions(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs before data limits are determined.
	**/
	function beforeDataLimits(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs after data limits are determined.
	**/
	function afterDataLimits(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs before ticks are created.
	**/
	function beforeBuildTicks(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs after ticks are created. Useful for filtering ticks.
	**/
	function afterBuildTicks(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs before ticks are converted into strings.
	**/
	function beforeTickToLabelConversion(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs after ticks are converted into strings.
	**/
	function afterTickToLabelConversion(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs before tick rotation is determined.
	**/
	function beforeCalculateTickRotation(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs after tick rotation is determined.
	**/
	function afterCalculateTickRotation(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs before the scale fits to the canvas.
	**/
	function beforeFit(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs after the scale fits to the canvas.
	**/
	function afterFit(axis:Scale<CoreScaleOptions>):Void;
	/**
		Callback that runs at the end of the update process.
	**/
	function afterUpdate(axis:Scale<CoreScaleOptions>):Void;
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
};