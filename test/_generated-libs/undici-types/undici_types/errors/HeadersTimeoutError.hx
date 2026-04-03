package undici_types.errors;

/**
	A header exceeds the `headersTimeout` option.
**/
@:jsRequire("undici-types", "errors.HeadersTimeoutError") extern class HeadersTimeoutError extends UndiciError {
	static var prototype : HeadersTimeoutError;
}