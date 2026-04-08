package chart_js;

typedef TickOptions = {
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
};