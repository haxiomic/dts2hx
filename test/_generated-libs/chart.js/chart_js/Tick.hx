package chart_js;

typedef Tick = {
	var value : Float;
	@:optional
	var label : ts.AnyOf2<String, Array<String>>;
	@:optional
	var major : Bool;
};