package node.stream.stream;

typedef PipelineSource<T> = ts.AnyOf4<global.nodejs.ReadableStream, Iterable<T>, js.lib.AsyncIterable<T, Dynamic, Dynamic>, PipelineSourceFunction<T>>;