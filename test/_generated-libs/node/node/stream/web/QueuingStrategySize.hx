package node.stream.web;

typedef QueuingStrategySize<T> = ts.AnyOf2<() -> Float, (chunk:T) -> Float>;