package node.stream.stream;

typedef PipelineSourceFunction<T> = () -> ts.AnyOf2<Iterable<T>, js.lib.AsyncIterable<T, Dynamic, Dynamic>>;