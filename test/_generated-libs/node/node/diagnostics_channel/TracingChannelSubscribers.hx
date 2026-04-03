package node.diagnostics_channel;

typedef TracingChannelSubscribers<ContextType> = {
	dynamic function start(message:ContextType):Void;
	dynamic function end(message:Dynamic):Void;
	dynamic function asyncStart(message:Dynamic):Void;
	dynamic function asyncEnd(message:Dynamic):Void;
	dynamic function error(message:Dynamic):Void;
};