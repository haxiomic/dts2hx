package chart_js;

@:jsRequire("chart.js", "Animation") extern class Animation {
	function new(cfg:haxe.DynamicAccess<Any>, target:haxe.DynamicAccess<Any>, prop:String, ?to:Any);
	function active():Bool;
	function update(cfg:haxe.DynamicAccess<Any>, to:Any, date:Float):Void;
	function cancel():Void;
	function tick(date:Float):Void;
	static var prototype : Animation;
}