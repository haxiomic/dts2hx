package global.nodejs;

/**
	Most of the time the unhandledRejection will be an Error, but this should not be relied upon
	as *anything* can be thrown/rejected, it is therefore unsafe to assume that the value is an Error.
**/
typedef UnhandledRejectionListener = (reason:Any, promise:js.lib.Promise<Any>) -> Void;