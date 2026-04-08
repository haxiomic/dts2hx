package chart_js;

typedef ChartConfiguration<TType:(String), TData, TLabel> = {
	var type : TType;
	var data : ChartData<TType, TData, TLabel>;
	@:optional
	var options : chart_js.types.utils.DeepPartial<CoreChartOptions<TType> & ElementChartOptions<TType> & PluginChartOptions<TType> & { } & ScaleChartOptions<TType>>;
	@:optional
	var plugins : Array<Plugin<TType, haxe.DynamicAccess<Any>>>;
};