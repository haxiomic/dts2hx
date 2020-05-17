package node.worker_threads;

@:jsRequire("worker_threads", "MessageChannel") extern class MessageChannel {
	final port1 : MessagePort;
	final port2 : MessagePort;
}