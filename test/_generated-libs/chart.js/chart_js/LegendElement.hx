package chart_js;

typedef LegendElement = {
	final x : Float;
	final y : Float;
	final active : Bool;
	final options : { };
	function tooltipPosition(?useFinalPosition:Bool):Point;
	function hasValue():Bool;
	@:overload(function<P:(ts.Never), P2:(ts.Never)>(props:ts.Tuple2<P, P2>, ?final_:Bool):{ } { })
	@:overload(function<P:(ts.Never), P2:(ts.Never), P3:(ts.Never)>(props:ts.Tuple3<P, P2, P3>, ?final_:Bool):{ } { })
	@:overload(function<P:(ts.Never), P2:(ts.Never), P3:(ts.Never), P4:(ts.Never)>(props:ts.Tuple4<P, P2, P3, P4>, ?final_:Bool):{ } { })
	@:overload(function<P:(ts.Never), P2:(ts.Never), P3:(ts.Never), P4:(ts.Never), P5:(ts.Never)>(props:ts.Tuple5<P, P2, P3, P4, P5>, ?final_:Bool):{ } { })
	@:overload(function(props:Array<ts.Never>, ?final_:Bool):{ } { })
	function getProps<P:(ts.Never)>(props:ts.Tuple1<P>, ?final_:Bool):{ };
	/**
		The position of the item in the chart layout. Possible values are
	**/
	var position : LayoutPosition;
	/**
		The weight used to sort the item. Higher weights are further away from the chart area
	**/
	var weight : Float;
	/**
		if true, and the item is horizontal, then push vertical boxes down
	**/
	var fullSize : Bool;
	/**
		Width of item. Must be valid after update()
	**/
	var width : Float;
	/**
		Height of item. Must be valid after update()
	**/
	var height : Float;
	/**
		Left edge of the item. Set by layout system and cannot be used in update
	**/
	var left : Float;
	/**
		Top edge of the item. Set by layout system and cannot be used in update
	**/
	var top : Float;
	/**
		Right edge of the item. Set by layout system and cannot be used in update
	**/
	var right : Float;
	/**
		Bottom edge of the item. Set by layout system and cannot be used in update
	**/
	var bottom : Float;
	/**
		Called before the layout process starts
	**/
	@:optional
	function beforeLayout():Void;
	/**
		Draws the element
	**/
	function draw(chartArea:ChartArea):Void;
	/**
		Returns an object with padding on the edges
	**/
	@:optional
	function getPadding():ChartArea;
	/**
		returns true if the layout item is horizontal (ie. top or bottom)
	**/
	function isHorizontal():Bool;
	/**
		Takes two parameters: width and height.
	**/
	function update(width:Float, height:Float, ?margins:ChartArea):Void;
};