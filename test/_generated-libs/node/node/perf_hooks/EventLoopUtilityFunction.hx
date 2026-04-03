package node.perf_hooks;

typedef EventLoopUtilityFunction = ts.AnyOf3<() -> EventLoopUtilization, (utilization1:EventLoopUtilization) -> EventLoopUtilization, (utilization1:EventLoopUtilization, utilization2:EventLoopUtilization) -> EventLoopUtilization>;