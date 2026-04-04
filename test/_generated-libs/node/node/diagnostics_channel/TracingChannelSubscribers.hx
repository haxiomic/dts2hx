package node.diagnostics_channel;

typedef TracingChannelSubscribers<ContextType> = {
	dynamic function start(message:ContextType):Void;
	dynamic function end(message:{ @:optional var error : Any; @:optional var result : Any; }):Void;
	dynamic function asyncStart(message:{ @:optional var error : Any; @:optional var result : Any; }):Void;
	dynamic function asyncEnd(message:{ @:optional var error : Any; @:optional var result : Any; }):Void;
	dynamic function error(message:{ var error : Any; }):Void;
};