package js.html;

typedef ReadableStreamController<T> = ts.AnyOf2<ReadableByteStreamController, ReadableStreamDefaultController<T>>;