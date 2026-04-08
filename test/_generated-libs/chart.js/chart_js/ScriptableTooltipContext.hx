package chart_js;

typedef ScriptableTooltipContext<TType:(String)> = {
	var chart : Chart<TType, chart_js.types.utils.DistributiveArray<Dynamic>, Any>;
	var tooltip : TooltipModel<TType>;
	var tooltipItems : Array<TooltipItem<TType>>;
};