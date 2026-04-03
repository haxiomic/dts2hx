package node.vm;

typedef MemoryMeasurement = {
	var total : {
		var jsMemoryEstimate : Float;
		var jsMemoryRange : ts.Tuple2<Float, Float>;
	};
};