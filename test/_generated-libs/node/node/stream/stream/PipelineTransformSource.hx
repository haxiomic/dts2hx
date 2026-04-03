package node.stream.stream;

typedef PipelineTransformSource<T> = ts.AnyOf6<global.nodejs.ReadableStream, global.nodejs.ReadWriteStream, Iterable<T>, js.lib.AsyncIterable<T, Dynamic, Dynamic>, PipelineSourceFunction<T>, (source:Dynamic) -> js.lib.AsyncIterable<T, Dynamic, Dynamic>>;