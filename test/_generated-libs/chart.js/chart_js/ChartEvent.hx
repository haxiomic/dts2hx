package chart_js;

typedef ChartEvent = {
	var type : String;
	var native : Null<js.html.Event>;
	var x : Null<Float>;
	var y : Null<Float>;
};