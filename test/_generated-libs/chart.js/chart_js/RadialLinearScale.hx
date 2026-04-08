package chart_js;

@:jsRequire("chart.js", "RadialLinearScale") extern class RadialLinearScale<O:(RadialLinearScaleOptions)> {
	function new<O:(RadialLinearScaleOptions)>(cfg:haxe.DynamicAccess<Any>);
	function setCenterPoint(leftMovement:Float, rightMovement:Float, topMovement:Float, bottomMovement:Float):Void;
	function getIndexAngle(index:Float):Float;
	function getDistanceFromCenterForValue(value:Float):Float;
	function getValueForDistanceFromCenter(distance:Float):Float;
	function getPointPosition(index:Float, distanceFromCenter:Float):{
		var x : Float;
		var y : Float;
		var angle : Float;
	};
	function getPointPositionForValue(index:Float, value:Float):{
		var x : Float;
		var y : Float;
		var angle : Float;
	};
	function getPointLabelPosition(index:Float):ChartArea;
	function getBasePosition(index:Float):{
		var x : Float;
		var y : Float;
		var angle : Float;
	};
	final id : String;
	final type : String;
	final ctx : js.html.CanvasRenderingContext2D;
	final chart : Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>;
	var maxWidth : Float;
	var maxHeight : Float;
	var paddingTop : Float;
	var paddingBottom : Float;
	var paddingLeft : Float;
	var paddingRight : Float;
	var axis : String;
	var labelRotation : Float;
	var min : Float;
	var max : Float;
	var ticks : Array<Tick>;
	function getMatchingVisibleMetas(?type:String):Array<ChartMeta<Element<{ }, { }>, Element<{ }, { }>>>;
	function drawTitle(chartArea:ChartArea):Void;
	function drawLabels(chartArea:ChartArea):Void;
	function drawGrid(chartArea:ChartArea):Void;
	function getDecimalForPixel(pixel:Float):Float;
	/**
		Utility for getting the pixel location of a percentage of scale
		The coordinate (0, 0) is at the upper-left corner of the canvas
	**/
	function getPixelForDecimal(decimal:Float):Float;
	/**
		Returns the location of the tick at the given index
		The coordinate (0, 0) is at the upper-left corner of the canvas
	**/
	function getPixelForTick(index:Float):Float;
	/**
		Used to get the label to display in the tooltip for the given value
	**/
	function getLabelForValue(value:Float):String;
	/**
		Returns the grid line width at given value
	**/
	function getLineWidthForValue(value:Float):Float;
	/**
		Returns the location of the given data point. Value can either be an index or a numerical value
		The coordinate (0, 0) is at the upper-left corner of the canvas
	**/
	function getPixelForValue(value:Float, index:Float):Float;
	/**
		Used to get the data value from a given pixel. This is the inverse of getPixelForValue
		The coordinate (0, 0) is at the upper-left corner of the canvas
	**/
	function getValueForPixel(pixel:Float):Null<Float>;
	function getBaseValue():Float;
	/**
		Returns the pixel for the minimum chart value
		The coordinate (0, 0) is at the upper-left corner of the canvas
	**/
	function getBasePixel():Float;
	function init(options:O):Void;
	function parse(raw:Any, index:Float):Any;
	function getUserBounds():{
		var min : Float;
		var max : Float;
		var minDefined : Bool;
		var maxDefined : Bool;
	};
	function getMinMax(canStack:Bool):{
		var min : Float;
		var max : Float;
	};
	function getTicks():Array<Tick>;
	function getLabels():Array<String>;
	function beforeUpdate():Void;
	function configure():Void;
	function afterUpdate():Void;
	function beforeSetDimensions():Void;
	function setDimensions():Void;
	function afterSetDimensions():Void;
	function beforeDataLimits():Void;
	function determineDataLimits():Void;
	function afterDataLimits():Void;
	function beforeBuildTicks():Void;
	function buildTicks():Array<Tick>;
	function afterBuildTicks():Void;
	function beforeTickToLabelConversion():Void;
	function generateTickLabels(ticks:Array<Tick>):Void;
	function afterTickToLabelConversion():Void;
	function beforeCalculateLabelRotation():Void;
	function calculateLabelRotation():Void;
	function afterCalculateLabelRotation():Void;
	function beforeFit():Void;
	function fit():Void;
	function afterFit():Void;
	function isFullSize():Bool;
	final x : Float;
	final y : Float;
	final active : Bool;
	final options : O;
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
	@:native("id")
	static var id_ : String;
	@:optional
	static var defaults : haxe.DynamicAccess<Any>;
	@:optional
	static var defaultRoutes : haxe.DynamicAccess<String>;
	@:optional
	static function beforeRegister():Void;
	@:optional
	static function afterRegister():Void;
	@:optional
	static function beforeUnregister():Void;
	@:optional
	static function afterUnregister():Void;
	static var prototype : RadialLinearScale<RadialLinearScaleOptions>;
}