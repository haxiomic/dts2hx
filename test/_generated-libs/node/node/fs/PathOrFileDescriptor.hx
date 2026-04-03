package node.fs;

typedef PathOrFileDescriptor = ts.AnyOf4<String, Float, node.url.URL, node.buffer.Buffer<js.lib.ArrayBufferLike>>;