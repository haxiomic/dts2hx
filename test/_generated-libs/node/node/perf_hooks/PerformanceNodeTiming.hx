package node.perf_hooks;
extern interface PerformanceNodeTiming extends PerformanceEntry {
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
}