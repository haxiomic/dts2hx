@:jsRequire("chart.js") @valueModuleOnly extern class ChartJs {
	static final _adapters : {
		var _date : chart_js.DateAdapter;
	};
	static final registerables : haxe.ds.ReadOnlyArray<chart_js.ChartComponentLike>;
	static final defaults : chart_js.Defaults;
	static final Interaction : {
		var modes : chart_js.InteractionModeMap;
	};
	static final layouts : {
		/**
			Register a box to a chart.
			A box is simply a reference to an object that requires layout. eg. Scales, Legend, Title.
		**/
		function addBox(chart:chart_js.Chart<String, Array<Null<ts.AnyOf3<Float, chart_js.ScatterDataPoint, chart_js.BubbleDataPoint>>>, Any>, item:chart_js.LayoutItem):Void;
		/**
			Remove a layoutItem from a chart
		**/
		function removeBox(chart:chart_js.Chart<String, Array<Null<ts.AnyOf3<Float, chart_js.ScatterDataPoint, chart_js.BubbleDataPoint>>>, Any>, layoutItem:chart_js.LayoutItem):Void;
		/**
			Sets (or updates) options on the given `item`.
		**/
		function configure(chart:chart_js.Chart<String, Array<Null<ts.AnyOf3<Float, chart_js.ScatterDataPoint, chart_js.BubbleDataPoint>>>, Any>, item:chart_js.LayoutItem, options:{ @:optional var fullSize : Float; @:optional var position : chart_js.LayoutPosition; @:optional var weight : Float; }):Void;
		/**
			Fits boxes of the given chart into the given size by having each box measure itself
			then running a fitting algorithm
		**/
		function update(chart:chart_js.Chart<String, Array<Null<ts.AnyOf3<Float, chart_js.ScatterDataPoint, chart_js.BubbleDataPoint>>>, Any>, width:Float, height:Float):Void;
	};
	static final registry : chart_js.Registry;
	static final Ticks : {
		var formatters : {
			/**
				Formatter for value labels
			**/
			function values(value:Any):ts.AnyOf2<String, Array<String>>;
			/**
				Formatter for numeric ticks
			**/
			function numeric(tickValue:Float, index:Float, ticks:Array<{ var value : Float; }>):String;
			/**
				Formatter for logarithmic ticks
			**/
			function logarithmic(tickValue:Float, index:Float, ticks:Array<{ var value : Float; }>):String;
		};
	};
	static final Decimation : chart_js.Plugin<String, haxe.DynamicAccess<Any>>;
	static final Filler : chart_js.Plugin<String, haxe.DynamicAccess<Any>>;
	static final Legend : chart_js.Plugin<String, haxe.DynamicAccess<Any>>;
	static final Title : chart_js.Plugin<String, haxe.DynamicAccess<Any>>;
	static final Tooltip : chart_js.Plugin<String, haxe.DynamicAccess<Any>> & {
		final positioners : haxe.DynamicAccess<(items:haxe.ds.ReadOnlyArray<chart_js.ActiveElement>, eventPosition:{ var x : Float; var y : Float; }) -> ts.AnyOf2<Bool, { var x : Float; var y : Float; }>>;
		function getActiveElements():Array<chart_js.ActiveElement>;
		function setActiveElements(active:Array<chart_js.ActiveDataPoint>, eventPosition:{ var x : Float; var y : Float; }):Void;
	};
}