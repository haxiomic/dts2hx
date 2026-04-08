package chart_js;

typedef ChartDatasetProperties<TType:(String), TData> = {
	@:optional
	var type : TType;
	var data : TData;
};