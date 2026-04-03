package node.diagnostics_channel;

typedef TracingChannelCollection<StoreType, ContextType> = {
	var start : Channel<StoreType, ContextType>;
	var end : Channel<StoreType, ContextType>;
	var asyncStart : Channel<StoreType, ContextType>;
	var asyncEnd : Channel<StoreType, ContextType>;
	var error : Channel<StoreType, ContextType>;
};