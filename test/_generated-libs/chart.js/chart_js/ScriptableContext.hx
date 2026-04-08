package chart_js;

typedef ScriptableContext<TType:(String)> = {
	var active : Bool;
	var chart : Chart<TType, chart_js.types.utils.DistributiveArray<Dynamic>, Any>;
	var dataIndex : Float;
	var dataset : chart_js.types.utils.UnionToIntersection<ChartDataset<TType, chart_js.types.utils.DistributiveArray<Dynamic>>>;
	var datasetIndex : Float;
	var parsed : chart_js.types.utils.UnionToIntersection<ParsedDataType<TType>>;
	var raw : Any;
};