package undici_types.errors;

/**
	Expected error with reason.
**/
@:jsRequire("undici-types", "errors.InformationalError") extern class InformationalError extends UndiciError {
	static var prototype : InformationalError;
}