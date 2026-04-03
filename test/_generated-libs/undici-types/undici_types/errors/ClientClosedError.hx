package undici_types.errors;

/**
	Trying to use a closed client.
**/
@:jsRequire("undici-types", "errors.ClientClosedError") extern class ClientClosedError extends UndiciError {
	static var prototype : ClientClosedError;
}