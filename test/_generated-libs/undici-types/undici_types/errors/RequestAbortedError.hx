package undici_types.errors;

/**
	The request has been aborted by the user.
**/
@:jsRequire("undici-types", "errors.RequestAbortedError") extern class RequestAbortedError extends UndiciError {
	static var prototype : RequestAbortedError;
}