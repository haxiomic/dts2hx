package undici_types.buildconnector;

typedef CallbackArgs = ts.AnyOf2<ts.Tuple2<Dynamic, ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>>, ts.Tuple2<js.lib.Error, Dynamic>>;