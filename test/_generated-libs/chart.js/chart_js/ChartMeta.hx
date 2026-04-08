package chart_js;

typedef ChartMeta<TElement, TDatasetElement> = {
	var type : String;
	var controller : DatasetController<String, Element<{ }, { }>, Element<{ }, { }>, ts.AnyOf5<Float, CartesianParsedData, BarParsedData, BubbleParsedData, RadialParsedData>>;
	var order : Float;
	var label : String;
	var index : Float;
	var visible : Bool;
	var stack : Float;
	var indexAxis : String;
	var data : Array<TElement>;
	@:optional
	var dataset : TDatasetElement;
	var hidden : Bool;
	@:optional
	var xAxisID : String;
	@:optional
	var yAxisID : String;
	@:optional
	var rAxisID : String;
	var iAxisID : String;
	var vAxisID : String;
	@:optional
	var xScale : Scale<CoreScaleOptions>;
	@:optional
	var yScale : Scale<CoreScaleOptions>;
	@:optional
	var rScale : Scale<CoreScaleOptions>;
	@:optional
	var iScale : Scale<CoreScaleOptions>;
	@:optional
	var vScale : Scale<CoreScaleOptions>;
	var _sorted : Bool;
	var _stacked : ts.AnyOf2<Bool, String>;
	var _parsed : Array<Any>;
};