package chart_js;

typedef ExtendedPlugin<TType:(String), O, Model> = {
	@:optional
	function beforeTooltipDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var tooltip : Model; }, options:O):Bool;
	@:optional
	function afterTooltipDraw(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, args:{ var tooltip : Model; }, options:O):Void;
};