package chart_js;

typedef LttbDecimationOptions = {
	var algorithm : ts.AnyOf2<String, DecimationAlgorithm>;
	@:optional
	var samples : Float;
	var enabled : Bool;
};