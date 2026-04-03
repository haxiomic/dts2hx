package undici_types.errors;

/**
	Response body length does not match content-length header.
**/
@:jsRequire("undici-types", "errors.ResponseContentLengthMismatchError") extern class ResponseContentLengthMismatchError extends UndiciError {
	static var prototype : ResponseContentLengthMismatchError;
}