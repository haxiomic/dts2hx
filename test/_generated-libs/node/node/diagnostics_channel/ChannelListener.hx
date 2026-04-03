package node.diagnostics_channel;

typedef ChannelListener = (message:Any, name:ts.AnyOf2<String, js.lib.Symbol>) -> Void;