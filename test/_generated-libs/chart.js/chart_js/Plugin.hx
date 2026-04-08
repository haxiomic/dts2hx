package chart_js;

typedef Plugin<TType:(String), O> = {
	var id : String;
	@:optional
	function install(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function start(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function stop(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function beforeInit(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function afterInit(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function beforeUpdate(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var mode : String; var cancelable : Bool; }, options:O):Bool;
	@:optional
	function afterUpdate(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var mode : String; }, options:O):Void;
	@:optional
	function beforeElementsUpdate(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function reset(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function beforeDatasetsUpdate(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var mode : String; }, options:O):Bool;
	@:optional
	function afterDatasetsUpdate(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var mode : String; var cancelable : Bool; }, options:O):Void;
	@:optional
	function beforeDatasetUpdate(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var index : Float; var meta : ChartMeta<Element<{ }, { }>, Element<{ }, { }>>; var mode : String; var cancelable : Bool; }, options:O):Bool;
	@:optional
	function afterDatasetUpdate(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var index : Float; var meta : ChartMeta<Element<{ }, { }>, Element<{ }, { }>>; var mode : String; var cancelable : Bool; }, options:O):Void;
	@:optional
	function beforeLayout(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var cancelable : Bool; }, options:O):Bool;
	@:optional
	function beforeDataLimits(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var scale : Scale<CoreScaleOptions>; }, options:O):Void;
	@:optional
	function afterDataLimits(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var scale : Scale<CoreScaleOptions>; }, options:O):Void;
	@:optional
	function beforeBuildTicks(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var scale : Scale<CoreScaleOptions>; }, options:O):Void;
	@:optional
	function afterBuildTicks(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var scale : Scale<CoreScaleOptions>; }, options:O):Void;
	@:optional
	function afterLayout(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function beforeRender(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var cancelable : Bool; }, options:O):Bool;
	@:optional
	function afterRender(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function beforeDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var cancelable : Bool; }, options:O):Bool;
	@:optional
	function afterDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function beforeDatasetsDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var cancelable : Bool; }, options:O):Bool;
	@:optional
	function afterDatasetsDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O, cancelable:Bool):Void;
	@:optional
	function beforeDatasetDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var index : Float; var meta : ChartMeta<Element<{ }, { }>, Element<{ }, { }>>; }, options:O):Bool;
	@:optional
	function afterDatasetDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var index : Float; var meta : ChartMeta<Element<{ }, { }>, Element<{ }, { }>>; }, options:O):Void;
	@:optional
	function beforeEvent(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var event : ChartEvent; var replay : Bool; var cancelable : Bool; }, options:O):Bool;
	@:optional
	function afterEvent(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var event : ChartEvent; var replay : Bool; @:optional var changed : Bool; var cancelable : Bool; }, options:O):Void;
	@:optional
	function resize(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var size : { var width : Float; var height : Float; }; }, options:O):Void;
	/**
		Called after the chart has been destroyed.
	**/
	@:optional
	function destroy(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	/**
		Called after chart is destroyed on all plugins that were installed for that chart. This hook is also invoked for disabled plugins (options === false).
	**/
	@:optional
	function uninstall(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:haxe.DynamicAccess<ts.Never>, options:O):Void;
	@:optional
	function beforeTooltipDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var tooltip : TooltipModel<TType>; }, options:O):Bool;
	@:optional
	function afterTooltipDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var tooltip : TooltipModel<TType>; }, options:O):Void;
};