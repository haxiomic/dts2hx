package node.perf_hooks;
typedef PerformanceNodeTiming = {
	/**
		The high resolution millisecond timestamp at which the Node.js process completed bootstrap.
	**/
	final bootstrapComplete : Float;
	/**
		The high resolution millisecond timestamp at which cluster processing ended.
	**/
	final clusterSetupEnd : Float;
	/**
		The high resolution millisecond timestamp at which cluster processing started.
	**/
	final clusterSetupStart : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js event loop exited.
	**/
	final loopExit : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js event loop started.
	**/
	final loopStart : Float;
	/**
		The high resolution millisecond timestamp at which main module load ended.
	**/
	final moduleLoadEnd : Float;
	/**
		The high resolution millisecond timestamp at which main module load started.
	**/
	final moduleLoadStart : Float;
	/**
		The high resolution millisecond timestamp at which the Node.js process was initialized.
	**/
	final nodeStart : Float;
	/**
		The high resolution millisecond timestamp at which preload module load ended.
	**/
	final preloadModuleLoadEnd : Float;
	/**
		The high resolution millisecond timestamp at which preload module load started.
	**/
	final preloadModuleLoadStart : Float;
	/**
		The high resolution millisecond timestamp at which third_party_main processing ended.
	**/
	final thirdPartyMainEnd : Float;
	/**
		The high resolution millisecond timestamp at which third_party_main processing started.
	**/
	final thirdPartyMainStart : Float;
	/**
		The high resolution millisecond timestamp at which the V8 platform was initialized.
	**/
	final v8Start : Float;
	/**
		The total number of milliseconds elapsed for this entry.
		This value will not be meaningful for all Performance Entry types.
	**/
	final duration : Float;
	/**
		The name of the performance entry.
	**/
	final name : String;
	/**
		The high resolution millisecond timestamp marking the starting time of the Performance Entry.
	**/
	final startTime : Float;
	/**
		The type of the performance entry.
		Currently it may be one of: 'node', 'mark', 'measure', 'gc', or 'function'.
	**/
	final entryType : String;
	/**
		When performanceEntry.entryType is equal to 'gc', the performance.kind property identifies
		the type of garbage collection operation that occurred.
		The value may be one of perf_hooks.constants.
	**/
	@:optional
	final kind : Float;
};