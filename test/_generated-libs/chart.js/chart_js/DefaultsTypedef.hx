package chart_js;

typedef DefaultsTypedef = {
	var scale : ScaleOptionsByType<String>;
	var scales : Dynamic;
	@:overload(function(scope:String, values:haxe.DynamicAccess<Any>):haxe.DynamicAccess<Any> { })
	function set(values:haxe.DynamicAccess<Any>):haxe.DynamicAccess<Any>;
	function get(scope:String):haxe.DynamicAccess<Any>;
	function describe(scope:String, values:haxe.DynamicAccess<Any>):haxe.DynamicAccess<Any>;
	@:native("override")
	function override_(scope:String, values:haxe.DynamicAccess<Any>):haxe.DynamicAccess<Any>;
	/**
		Routes the named defaults to fallback to another scope/name.
		This routing is useful when those target values, like defaults.color, are changed runtime.
		If the values would be copied, the runtime change would not take effect. By routing, the
		fallback is evaluated at each access, so its always up to date.
		
		Example:
		
		  defaults.route('elements.arc', 'backgroundColor', '', 'color')
		   - reads the backgroundColor from defaults.color when undefined locally
	**/
	function route(scope:String, name:String, targetScope:String, targetName:String):Void;
	var datasets : Dynamic;
	/**
		The base axis of the chart. 'x' for vertical charts and 'y' for horizontal charts.
	**/
	var indexAxis : String;
	/**
		base color
	**/
	var color : Color;
	/**
		base background color
	**/
	var backgroundColor : Color;
	/**
		base border color
	**/
	var borderColor : Color;
	/**
		base font
	**/
	var font : FontSpec;
	/**
		Resizes the chart canvas when its container does (important note...).
	**/
	var responsive : Bool;
	/**
		Maintain the original canvas aspect ratio (width / height) when resizing.
	**/
	var maintainAspectRatio : Bool;
	/**
		Canvas aspect ratio (i.e. width / height, a value of 1 representing a square canvas). Note that this option is ignored if the height is explicitly defined either as attribute or via the style.
	**/
	var aspectRatio : Float;
	/**
		Locale used for number formatting (using `Intl.NumberFormat`).
	**/
	var locale : String;
	/**
		Called when a resize occurs. Gets passed two arguments: the chart instance and the new size.
	**/
	function onResize(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, size:{ var width : Float; var height : Float; }):Void;
	/**
		Override the window's default devicePixelRatio.
	**/
	var devicePixelRatio : Float;
	var interaction : CoreInteractionOptions;
	var hover : CoreInteractionOptions;
	/**
		The events option defines the browser events that the chart should listen to for tooltips and hovering.
	**/
	var events : Array<String>;
	/**
		Called when any of the events fire. Passed the event, an array of active elements (bars, points, etc), and the chart.
	**/
	function onHover(event:ChartEvent, elements:Array<ActiveElement>, chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Void;
	/**
		Called if the event is of type 'mouseup' or 'click'. Passed the event, an array of active elements, and the chart.
	**/
	function onClick(event:ChartEvent, elements:Array<ActiveElement>, chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Void;
	var layout : {
		var padding : Scriptable<ts.AnyOf2<Float, ChartArea>, ScriptableContext<String>>;
	};
	/**
		How to parse the dataset. The parsing can be disabled by specifying parsing: false at chart options or dataset. If parsing is disabled, data must be sorted and in the formats the associated chart type and scales use internally.
	**/
	var parsing : ts.AnyOf2<Bool, haxe.DynamicAccess<String>>;
	/**
		Chart.js is fastest if you provide data with indices that are unique, sorted, and consistent across datasets and provide the normalized: true option to let Chart.js know that you have done so.
	**/
	var normalized : Bool;
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
	var elements : ElementOptionsByType<String>;
	var plugins : PluginOptionsByType<String>;
};