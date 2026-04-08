package chart_js;

typedef ChartTypeRegistry = {
	var bar : {
		var chartOptions : BarControllerChartOptions;
		var datasetOptions : BarControllerDatasetOptions;
		var defaultDataPoint : Float;
		var parsedDataType : BarParsedData;
		var scales : String;
	};
	var line : {
		var chartOptions : LineControllerChartOptions;
		var datasetOptions : LineControllerDatasetOptions & FillerControllerDatasetOptions;
		var defaultDataPoint : Null<ts.AnyOf2<Float, ScatterDataPoint>>;
		var parsedDataType : CartesianParsedData;
		var scales : String;
	};
	var scatter : {
		var chartOptions : LineControllerChartOptions;
		var datasetOptions : LineControllerDatasetOptions;
		var defaultDataPoint : Null<ts.AnyOf2<Float, ScatterDataPoint>>;
		var parsedDataType : CartesianParsedData;
		var scales : String;
	};
	var bubble : {
		var chartOptions : Any;
		var datasetOptions : BubbleControllerDatasetOptions;
		var defaultDataPoint : BubbleDataPoint;
		var parsedDataType : BubbleParsedData;
		var scales : String;
	};
	var pie : {
		var chartOptions : DoughnutControllerChartOptions;
		var datasetOptions : DoughnutControllerDatasetOptions;
		var defaultDataPoint : Float;
		var parsedDataType : Float;
		var scales : String;
	};
	var doughnut : {
		var chartOptions : DoughnutControllerChartOptions;
		var datasetOptions : DoughnutControllerDatasetOptions;
		var defaultDataPoint : Float;
		var parsedDataType : Float;
		var scales : String;
	};
	var polarArea : {
		var chartOptions : PolarAreaControllerChartOptions;
		var datasetOptions : PolarAreaControllerDatasetOptions;
		var defaultDataPoint : Float;
		var parsedDataType : RadialParsedData;
		var scales : String;
	};
	var radar : {
		var chartOptions : LineControllerChartOptions;
		var datasetOptions : RadarControllerDatasetOptions;
		var defaultDataPoint : Null<Float>;
		var parsedDataType : RadialParsedData;
		var scales : String;
	};
};