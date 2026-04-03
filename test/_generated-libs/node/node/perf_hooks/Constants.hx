package node.perf_hooks;

@:jsRequire("perf_hooks", "constants") @valueModuleOnly extern class Constants {
	static final NODE_PERFORMANCE_GC_MAJOR : Float;
	static final NODE_PERFORMANCE_GC_MINOR : Float;
	static final NODE_PERFORMANCE_GC_INCREMENTAL : Float;
	static final NODE_PERFORMANCE_GC_WEAKCB : Float;
	static final NODE_PERFORMANCE_GC_FLAGS_NO : Float;
	static final NODE_PERFORMANCE_GC_FLAGS_CONSTRUCT_RETAINED : Float;
	static final NODE_PERFORMANCE_GC_FLAGS_FORCED : Float;
	static final NODE_PERFORMANCE_GC_FLAGS_SYNCHRONOUS_PHANTOM_PROCESSING : Float;
	static final NODE_PERFORMANCE_GC_FLAGS_ALL_AVAILABLE_GARBAGE : Float;
	static final NODE_PERFORMANCE_GC_FLAGS_ALL_EXTERNAL_MEMORY : Float;
	static final NODE_PERFORMANCE_GC_FLAGS_SCHEDULE_IDLE : Float;
}