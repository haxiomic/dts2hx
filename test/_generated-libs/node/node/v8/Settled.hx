package node.v8;

/**
	Called when the promise receives a resolution or rejection value. This may occur synchronously in the case of
	{@link
	Promise.resolve()
	}
	or
	{@link
	Promise.reject()
	}
	.
**/
typedef Settled = (promise:js.lib.Promise<Any>) -> Void;