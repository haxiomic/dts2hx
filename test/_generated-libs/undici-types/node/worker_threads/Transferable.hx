package node.worker_threads;

typedef Transferable = ts.AnyOf7<js.lib.ArrayBuffer, js.html.AbortSignal, node.fs.promises.FileHandle, MessagePort, node.stream.web.ReadableStream<Dynamic>, node.stream.web.WritableStream<Dynamic>, node.stream.web.TransformStream<Dynamic, Dynamic>>;