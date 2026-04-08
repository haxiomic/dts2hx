package chart_js;

typedef ChartData<TType:(String), TData, TLabel> = {
	@:optional
	var labels : Array<TLabel>;
	var datasets : Array<ChartDataset<TType, TData>>;
};