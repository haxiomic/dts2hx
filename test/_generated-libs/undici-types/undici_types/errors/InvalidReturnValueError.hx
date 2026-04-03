package undici_types.errors;

/**
	Returned an invalid value.
**/
@:jsRequire("undici-types", "errors.InvalidReturnValueError") extern class InvalidReturnValueError extends UndiciError {
	static var prototype : InvalidReturnValueError;
}