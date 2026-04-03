package node.v8;

/**
	Called immediately after a promise continuation executes. This may be after a `then()`, `catch()`, or `finally()` handler or before an await after another await.
**/
typedef After = (promise:js.lib.Promise<Any>) -> Void;