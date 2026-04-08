package chart_js;

typedef TooltipCallbacks<TType:(String), Model, Item> = {
	function beforeTitle(tooltipItems:Array<Item>):ts.AnyOf2<String, Array<String>>;
	function title(tooltipItems:Array<Item>):ts.AnyOf2<String, Array<String>>;
	function afterTitle(tooltipItems:Array<Item>):ts.AnyOf2<String, Array<String>>;
	function beforeBody(tooltipItems:Array<Item>):ts.AnyOf2<String, Array<String>>;
	function afterBody(tooltipItems:Array<Item>):ts.AnyOf2<String, Array<String>>;
	function beforeLabel(tooltipItem:Item):ts.AnyOf2<String, Array<String>>;
	function label(tooltipItem:Item):ts.AnyOf2<String, Array<String>>;
	function afterLabel(tooltipItem:Item):ts.AnyOf2<String, Array<String>>;
	function labelColor(tooltipItem:Item):TooltipLabelStyle;
	function labelTextColor(tooltipItem:Item):Color;
	function labelPointStyle(tooltipItem:Item):{
		var pointStyle : PointStyle;
		var rotation : Float;
	};
	function beforeFooter(tooltipItems:Array<Item>):ts.AnyOf2<String, Array<String>>;
	function footer(tooltipItems:Array<Item>):ts.AnyOf2<String, Array<String>>;
	function afterFooter(tooltipItems:Array<Item>):ts.AnyOf2<String, Array<String>>;
};