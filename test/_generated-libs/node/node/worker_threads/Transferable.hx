package node.worker_threads;

typedef Transferable = ts.AnyOf7<js.lib.ArrayBuffer, js.html.AbortSignal, MessagePort, node.fs.promises.FileHandle, node.stream.web.ReadableStream<Dynamic>, node.stream.web.WritableStream<Dynamic>, node.stream.web.TransformStream<Dynamic, Dynamic>>;