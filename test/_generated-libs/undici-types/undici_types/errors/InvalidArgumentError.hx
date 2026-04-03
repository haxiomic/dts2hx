package undici_types.errors;

/**
	Passed an invalid argument.
**/
@:jsRequire("undici-types", "errors.InvalidArgumentError") extern class InvalidArgumentError extends UndiciError {
	static var prototype : InvalidArgumentError;
}