package node.stream.stream;

typedef PipelineTransform<S, U> = ts.AnyOf2<global.nodejs.ReadWriteStream, (source:Dynamic) -> js.lib.AsyncIterable<U, Dynamic, Dynamic>>;