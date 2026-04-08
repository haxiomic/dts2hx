package chart_js;

/**
	Please use the module's default export which provides a singleton instance
	Note: class is exported for typedoc
**/
typedef Registry = {
	final controllers : TypedRegistry<DatasetController<String, Element<{ }, { }>, Element<{ }, { }>, ts.AnyOf5<Float, CartesianParsedData, BarParsedData, BubbleParsedData, RadialParsedData>>>;
	final elements : TypedRegistry<Element<{ }, { }>>;
	final plugins : TypedRegistry<Plugin<String, haxe.DynamicAccess<Any>>>;
	final scales : TypedRegistry<Scale<CoreScaleOptions>>;
	function add(args:haxe.extern.Rest<ChartComponentLike>):Void;
	function remove(args:haxe.extern.Rest<ChartComponentLike>):Void;
	function addControllers(args:haxe.extern.Rest<ChartComponentLike>):Void;
	function addElements(args:haxe.extern.Rest<ChartComponentLike>):Void;
	function addPlugins(args:haxe.extern.Rest<ChartComponentLike>):Void;
	function addScales(args:haxe.extern.Rest<ChartComponentLike>):Void;
	function getController(id:String):Null<DatasetController<String, Element<{ }, { }>, Element<{ }, { }>, ts.AnyOf5<Float, CartesianParsedData, BarParsedData, BubbleParsedData, RadialParsedData>>>;
	function getElement(id:String):Null<Element<{ }, { }>>;
	function getPlugin(id:String):Null<Plugin<String, haxe.DynamicAccess<Any>>>;
	function getScale(id:String):Null<Scale<CoreScaleOptions>>;
};