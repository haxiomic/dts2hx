package chart_js;

typedef PluginOptionsByType<TType:(String)> = {
	var decimation : DecimationOptions;
	var filler : FillerOptions;
	var legend : LegendOptions;
	var title : TitleOptions;
	var tooltip : TooltipOptions<TType>;
};