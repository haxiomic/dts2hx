package chart_js;

@:jsRequire("chart.js", "DatasetController") extern class DatasetController<TType:(String), TElement, TDatasetElement, TParsedData> {
	function new(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, datasetIndex:Float);
	final chart : Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>;
	final index : Float;
	final _cachedMeta : ChartMeta<TElement, TDatasetElement>;
	var enableOptionSharing : Bool;
	function linkScales():Void;
	function getAllParsedValues(scale:Scale<CoreScaleOptions>):Array<Float>;
	function getLabelAndValue(index:Float):{
		var label : String;
		var value : String;
	};
	function updateElements(elements:Array<TElement>, start:Float, count:Float, mode:String):Void;
	function update(mode:String):Void;
	function updateIndex(datasetIndex:Float):Void;
	function getMaxOverflow():ts.AnyOf2<Float, Bool>;
	function draw():Void;
	function reset():Void;
	function getDataset():ChartDataset<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>>;
	function getMeta():ChartMeta<TElement, TDatasetElement>;
	function getScaleForId(scaleID:String):Null<Scale<CoreScaleOptions>>;
	function configure():Void;
	function initialize():Void;
	function addElements():Void;
	function buildOrUpdateElements(?resetNewElements:Bool):Void;
	function getStyle(index:Float, active:Bool):haxe.DynamicAccess<Any>;
	function resolveDatasetElementOptions(mode:String):haxe.DynamicAccess<Any>;
	function resolveDataElementOptions(index:Float, mode:String):haxe.DynamicAccess<Any>;
	/**
		Utility for checking if the options are shared and should be animated separately.
	**/
	function getSharedOptions(options:haxe.DynamicAccess<Any>):Null<haxe.DynamicAccess<Any>>;
	/**
		Utility for determining if `options` should be included in the updated properties
	**/
	function includeOptions(mode:String, sharedOptions:haxe.DynamicAccess<Any>):Bool;
	/**
		Utility for updating an element with new properties, using animations when appropriate.
	**/
	function updateElement(element:ts.AnyOf2<TElement, TDatasetElement>, index:Null<Float>, properties:haxe.DynamicAccess<Any>, mode:String):Void;
	/**
		Utility to animate the shared options, that are potentially affecting multiple elements.
	**/
	function updateSharedOptions(sharedOptions:haxe.DynamicAccess<Any>, mode:String, newOptions:haxe.DynamicAccess<Any>):Void;
	function removeHoverStyle(element:TElement, datasetIndex:Float, index:Float):Void;
	function setHoverStyle(element:TElement, datasetIndex:Float, index:Float):Void;
	function parse(start:Float, count:Float):Void;
	function parsePrimitiveData(meta:ChartMeta<TElement, TDatasetElement>, data:Array<haxe.DynamicAccess<Any>>, start:Float, count:Float):Array<haxe.DynamicAccess<Any>>;
	function parseArrayData(meta:ChartMeta<TElement, TDatasetElement>, data:Array<haxe.DynamicAccess<Any>>, start:Float, count:Float):Array<haxe.DynamicAccess<Any>>;
	function parseObjectData(meta:ChartMeta<TElement, TDatasetElement>, data:Array<haxe.DynamicAccess<Any>>, start:Float, count:Float):Array<haxe.DynamicAccess<Any>>;
	function getParsed(index:Float):TParsedData;
	function applyStack(scale:Scale<CoreScaleOptions>, parsed:Array<Any>):Float;
	function updateRangeFromParsed(range:{ var min : Float; var max : Float; }, scale:Scale<CoreScaleOptions>, parsed:Array<Any>, stack:ts.AnyOf2<String, Bool>):Void;
	function getMinMax(scale:Scale<CoreScaleOptions>, ?canStack:Bool):{
		var min : Float;
		var max : Float;
	};
	static var prototype : DatasetController<Dynamic, Dynamic, Dynamic, Dynamic>;
}