package undici_types.errors;

/**
	The response exceed the length allowed.
**/
@:jsRequire("undici-types", "errors.ResponseExceededMaxSizeError") extern class ResponseExceededMaxSizeError extends UndiciError {
	static var prototype : ResponseExceededMaxSizeError;
}