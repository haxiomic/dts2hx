package js.html;

typedef ReadableStreamReadResult<T> = ts.AnyOf2<ReadableStreamReadValueResult<T>, ReadableStreamReadDoneResult<T>>;