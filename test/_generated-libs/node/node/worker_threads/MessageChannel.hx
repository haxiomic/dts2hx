package node.worker_threads;

@:jsRequire("worker_threads", "MessageChannel") extern class MessageChannel {
	function new();
	final port1 : MessagePort;
	final port2 : MessagePort;
	static var prototype : MessageChannel;
}