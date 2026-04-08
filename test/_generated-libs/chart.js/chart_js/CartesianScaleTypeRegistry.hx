package chart_js;

typedef CartesianScaleTypeRegistry = {
	var linear : {
		var options : LinearScaleOptions;
	};
	var logarithmic : {
		var options : LogarithmicScaleOptions;
	};
	var category : {
		var options : CategoryScaleOptions;
	};
	var time : {
		var options : TimeScaleOptions;
	};
	var timeseries : {
		var options : TimeScaleOptions;
	};
};