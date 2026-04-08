package chart_js;

typedef TooltipItem<TType:(String)> = {
	/**
		The chart the tooltip is being shown on
	**/
	var chart : Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>;
	/**
		Label for the tooltip
	**/
	var label : String;
	/**
		Parsed data values for the given `dataIndex` and `datasetIndex`
	**/
	var parsed : chart_js.types.utils.UnionToIntersection<ParsedDataType<TType>>;
	/**
		Raw data values for the given `dataIndex` and `datasetIndex`
	**/
	var raw : Any;
	/**
		Formatted value for the tooltip
	**/
	var formattedValue : String;
	/**
		The dataset the item comes from
	**/
	var dataset : ChartDataset<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>>;
	/**
		Index of the dataset the item comes from
	**/
	var datasetIndex : Float;
	/**
		Index of this data item in the dataset
	**/
	var dataIndex : Float;
	/**
		The chart element (point, arc, bar, etc.) for this tooltip item
	**/
	var element : Element<{ }, { }>;
};