package chart_js;

typedef FillerControllerDatasetOptions = {
	/**
		Both line and radar charts support a fill option on the dataset object which can be used to create area between two datasets or a dataset and a boundary, i.e. the scale origin, start or end
	**/
	var fill : ts.AnyOf5<String, Float, Bool, {
		var value : Float;
	}, ComplexFillTarget>;
};