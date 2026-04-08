package chart_js;

typedef CategoryScaleOptions = CartesianScaleOptions & {
	var min : ts.AnyOf2<String, Float>;
	var max : ts.AnyOf2<String, Float>;
	var labels : ts.AnyOf2<Array<String>, Array<Array<String>>>;
};