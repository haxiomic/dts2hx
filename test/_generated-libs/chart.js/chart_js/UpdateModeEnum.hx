package chart_js;

@:jsRequire("chart.js", "UpdateModeEnum") extern enum abstract UpdateModeEnum(String) from String to String {
	final resize;
	final reset;
	final none;
	final hide;
	final show;
	final normal;
	final active;
}