package chart_js;

typedef LegendOptions = {
	/**
		Is the legend shown?
	**/
	var display : Bool;
	/**
		Position of the legend.
	**/
	var position : LayoutPosition;
	/**
		Alignment of the legend.
	**/
	var align : String;
	/**
		Marks that this box should take the full width/height of the canvas (moving other boxes). This is unlikely to need to be changed in day-to-day use.
	**/
	var fullSize : Bool;
	/**
		Legend will show datasets in reverse order.
	**/
	var reverse : Bool;
	/**
		A callback that is called when a click event is registered on a label item.
	**/
	function onClick(e:ChartEvent, legendItem:LegendItem, legend:LegendElement):Void;
	/**
		A callback that is called when a 'mousemove' event is registered on top of a label item
	**/
	function onHover(e:ChartEvent, legendItem:LegendItem, legend:LegendElement):Void;
	/**
		A callback that is called when a 'mousemove' event is registered outside of a previously hovered label item.
	**/
	function onLeave(e:ChartEvent, legendItem:LegendItem, legend:LegendElement):Void;
	var labels : {
		/**
			Width of colored box.
		**/
		var boxWidth : Float;
		/**
			Height of the coloured box.
		**/
		var boxHeight : Float;
		/**
			Color of label
		**/
		var color : Color;
		/**
			Font of label
		**/
		var font : FontSpec;
		/**
			Padding between rows of colored boxes.
		**/
		var padding : Float;
		/**
			Generates legend items for each thing in the legend. Default implementation returns the text + styling for the color box. See Legend Item for details.
		**/
		function generateLabels(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Array<LegendItem>;
		/**
			Filters legend items out of the legend. Receives 2 parameters, a Legend Item and the chart data
		**/
		function filter(item:LegendItem, data:ChartData<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Bool;
		/**
			Sorts the legend items
		**/
		function sort(a:LegendItem, b:LegendItem, data:ChartData<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>):Float;
		/**
			Override point style for the legend. Only applies if usePointStyle is true
		**/
		var pointStyle : PointStyle;
		/**
			Text alignment
		**/
		@:optional
		var textAlign : TextAlign;
		/**
			Label style will match corresponding point style (size is based on the minimum value between boxWidth and font.size).
		**/
		var usePointStyle : Bool;
	};
	var title : {
		/**
			Is the legend title displayed.
		**/
		var display : Bool;
		/**
			Color of title
		**/
		var color : Color;
		/**
			see Fonts
		**/
		var font : FontSpec;
		var position : String;
		@:optional
		var padding : ts.AnyOf2<Float, ChartArea>;
		/**
			The string title.
		**/
		var text : String;
	};
};