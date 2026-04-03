package undici_types.errors;

/**
	Encountered unsupported functionality.
**/
@:jsRequire("undici-types", "errors.NotSupportedError") extern class NotSupportedError extends UndiciError {
	static var prototype : NotSupportedError;
}