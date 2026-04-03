package node.worker_threads;

typedef WorkerPerformance = {
	dynamic function eventLoopUtilization(?utilization1:node.perf_hooks.EventLoopUtilization, ?utilization2:node.perf_hooks.EventLoopUtilization):node.perf_hooks.EventLoopUtilization;
};