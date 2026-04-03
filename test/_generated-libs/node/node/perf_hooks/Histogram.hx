package node.perf_hooks;

typedef Histogram = {
	/**
		The number of samples recorded by the histogram.
	**/
	final count : Float;
	/**
		The number of samples recorded by the histogram.
		v17.4.0, v16.14.0
	**/
	final countBigInt : ts.BigInt;
	/**
		The number of times the event loop delay exceeded the maximum 1 hour event
		loop delay threshold.
	**/
	final exceeds : Float;
	/**
		The number of times the event loop delay exceeded the maximum 1 hour event loop delay threshold.
	**/
	final exceedsBigInt : ts.BigInt;
	/**
		The maximum recorded event loop delay.
	**/
	final max : Float;
	/**
		The maximum recorded event loop delay.
		v17.4.0, v16.14.0
	**/
	final maxBigInt : Float;
	/**
		The mean of the recorded event loop delays.
	**/
	final mean : Float;
	/**
		The minimum recorded event loop delay.
	**/
	final min : Float;
	/**
		The minimum recorded event loop delay.
		v17.4.0, v16.14.0
	**/
	final minBigInt : ts.BigInt;
	/**
		Returns the value at the given percentile.
	**/
	function percentile(percentile:Float):Float;
	/**
		Returns the value at the given percentile.
	**/
	function percentileBigInt(percentile:Float):ts.BigInt;
	/**
		Returns a `Map` object detailing the accumulated percentile distribution.
	**/
	final percentiles : js.lib.Map<Float, Float>;
	/**
		Returns a `Map` object detailing the accumulated percentile distribution.
	**/
	final percentilesBigInt : js.lib.Map<ts.BigInt, ts.BigInt>;
	/**
		Resets the collected histogram data.
	**/
	function reset():Void;
	/**
		The standard deviation of the recorded event loop delays.
	**/
	final stddev : Float;
};