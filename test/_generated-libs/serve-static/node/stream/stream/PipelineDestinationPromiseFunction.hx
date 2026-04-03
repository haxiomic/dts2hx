package node.stream.stream;

typedef PipelineDestinationPromiseFunction<T, P> = (source:js.lib.AsyncIterable<T, Dynamic, Dynamic>) -> js.lib.Promise<P>;