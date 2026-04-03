package undici_types.errors;

/**
	Headers overflow error.
**/
@:jsRequire("undici-types", "errors.HeadersOverflowError") extern class HeadersOverflowError extends UndiciError {
	static var prototype : HeadersOverflowError;
}