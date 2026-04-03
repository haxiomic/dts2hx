package node.inspector.heapprofiler;

typedef StartSamplingParameterType = {
	/**
		Average sample interval in bytes. Poisson distribution is used for the intervals. The default value is 32768 bytes.
	**/
	@:optional
	var samplingInterval : Float;
};