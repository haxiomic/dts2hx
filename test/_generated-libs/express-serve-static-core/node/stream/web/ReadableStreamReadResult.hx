package node.stream.web;

typedef ReadableStreamReadResult<T> = ts.AnyOf2<ReadableStreamReadValueResult<T>, ReadableStreamReadDoneResult<T>>;