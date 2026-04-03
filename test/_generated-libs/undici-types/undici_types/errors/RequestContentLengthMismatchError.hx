package undici_types.errors;

/**
	Request body length does not match content-length header.
**/
@:jsRequire("undici-types", "errors.RequestContentLengthMismatchError") extern class RequestContentLengthMismatchError extends UndiciError {
	static var prototype : RequestContentLengthMismatchError;
}