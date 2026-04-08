package chart_js;

typedef InteractionModeMap = {
	/**
		Returns items at the same index. If the options.intersect parameter is true, we only return items if we intersect something
		If the options.intersect mode is false, we find the nearest item and return the items at the same index as that item
	**/
	dynamic function index(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, e:ChartEvent, options:InteractionOptions, ?useFinalPosition:Bool):Array<InteractionItem>;
	/**
		Returns items in the same dataset. If the options.intersect parameter is true, we only return items if we intersect something
		If the options.intersect is false, we find the nearest item and return the items in that dataset
	**/
	dynamic function dataset(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, e:ChartEvent, options:InteractionOptions, ?useFinalPosition:Bool):Array<InteractionItem>;
	/**
		Point mode returns all elements that hit test based on the event position
		of the event
	**/
	dynamic function point(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, e:ChartEvent, options:InteractionOptions, ?useFinalPosition:Bool):Array<InteractionItem>;
	/**
		nearest mode returns the element closest to the point
	**/
	dynamic function nearest(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, e:ChartEvent, options:InteractionOptions, ?useFinalPosition:Bool):Array<InteractionItem>;
	/**
		x mode returns the elements that hit-test at the current x coordinate
	**/
	dynamic function x(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, e:ChartEvent, options:InteractionOptions, ?useFinalPosition:Bool):Array<InteractionItem>;
	/**
		y mode returns the elements that hit-test at the current y coordinate
	**/
	dynamic function y(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, e:ChartEvent, options:InteractionOptions, ?useFinalPosition:Bool):Array<InteractionItem>;
};