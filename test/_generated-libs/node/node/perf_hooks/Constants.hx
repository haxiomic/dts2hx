package node.perf_hooks;

@:jsRequire("perf_hooks", "constants") @valueModuleOnly extern class Constants {
	static final NODE_PERFORMANCE_GC_MAJOR : Float;
	static final NODE_PERFORMANCE_GC_MINOR : Float;
	static final NODE_PERFORMANCE_GC_INCREMENTAL : Float;
	static final NODE_PERFORMANCE_GC_WEAKCB : Float;
}