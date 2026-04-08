package chart_js;

typedef LayoutItem = {
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