package node.stream.stream;

typedef PipelineDestinationIterableFunction<T> = (source:js.lib.AsyncIterable<T, Dynamic, Dynamic>) -> js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>;