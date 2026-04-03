package js.html;

typedef ReadableStreamReader<T> = ts.AnyOf2<ReadableStreamBYOBReader, ReadableStreamDefaultReader<T>>;