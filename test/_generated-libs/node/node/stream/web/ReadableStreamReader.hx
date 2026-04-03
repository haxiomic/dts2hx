package node.stream.web;

typedef ReadableStreamReader<T> = ts.AnyOf2<ReadableStreamBYOBReader, ReadableStreamDefaultReader<T>>;