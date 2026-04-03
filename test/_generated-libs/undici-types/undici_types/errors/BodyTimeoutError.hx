package undici_types.errors;

/**
	A body exceeds the `bodyTimeout` option.
**/
@:jsRequire("undici-types", "errors.BodyTimeoutError") extern class BodyTimeoutError extends UndiciError {
	static var prototype : BodyTimeoutError;
}