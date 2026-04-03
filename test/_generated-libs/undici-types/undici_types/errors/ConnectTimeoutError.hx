package undici_types.errors;

/**
	Connect timeout error.
**/
@:jsRequire("undici-types", "errors.ConnectTimeoutError") extern class ConnectTimeoutError extends UndiciError {
	static var prototype : ConnectTimeoutError;
}