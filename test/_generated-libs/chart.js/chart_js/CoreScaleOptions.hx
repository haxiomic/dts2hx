package chart_js;

typedef CoreScaleOptions = {
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
};