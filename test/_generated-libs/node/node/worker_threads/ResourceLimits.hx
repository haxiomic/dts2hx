package node.worker_threads;

typedef ResourceLimits = {
	/**
		The maximum size of a heap space for recently created objects.
	**/
	@:optional
	var maxYoungGenerationSizeMb : Float;
	/**
		The maximum size of the main heap in MB.
	**/
	@:optional
	var maxOldGenerationSizeMb : Float;
	/**
		The size of a pre-allocated memory range used for generated code.
	**/
	@:optional
	var codeRangeSizeMb : Float;
	/**
		The default maximum stack size for the thread. Small values may lead to unusable Worker instances.
	**/
	@:optional
	var stackSizeMb : Float;
};