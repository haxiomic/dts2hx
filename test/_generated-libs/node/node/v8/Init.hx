package node.v8;

/**
	Called when a promise is constructed. This does not mean that corresponding before/after events will occur, only that the possibility exists. This will
	happen if a promise is created without ever getting a continuation.
**/
typedef Init = (promise:js.lib.Promise<Any>, parent:js.lib.Promise<Any>) -> Void;