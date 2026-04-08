package chart_js;

typedef TypedRegistry<T> = {
	function register(item:ChartComponent):String;
	function get(id:String):Null<T>;
	function unregister(item:ChartComponent):Void;
};