package node.fs;

typedef RmOptions = {
	/**
		When `true`, exceptions will be ignored if `path` does not exist.
	**/
	@:optional
	var force : Bool;
	/**
		If an `EBUSY`, `EMFILE`, `ENFILE`, `ENOTEMPTY`, or
		`EPERM` error is encountered, Node.js will retry the operation with a linear
		backoff wait of `retryDelay` ms longer on each try. This option represents the
		number of retries. This option is ignored if the `recursive` option is not
		`true`.
	**/
	@:optional
	var maxRetries : Float;
	/**
		If `true`, perform a recursive directory removal. In
		recursive mode, operations are retried on failure.
	**/
	@:optional
	var recursive : Bool;
	/**
		The amount of time in milliseconds to wait between retries.
		This option is ignored if the `recursive` option is not `true`.
	**/
	@:optional
	var retryDelay : Float;
};