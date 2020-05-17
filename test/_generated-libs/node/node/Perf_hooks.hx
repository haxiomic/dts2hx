package node;

@:jsRequire("perf_hooks") @valueModuleOnly extern class Perf_hooks {
	static function monitorEventLoopDelay(?options:node.perf_hooks.EventLoopMonitorOptions):node.perf_hooks.EventLoopDelayMonitor;
	static var performance : node.perf_hooks.Performance;
}