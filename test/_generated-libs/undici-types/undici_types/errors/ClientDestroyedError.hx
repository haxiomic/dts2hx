package undici_types.errors;

/**
	Trying to use a destroyed client.
**/
@:jsRequire("undici-types", "errors.ClientDestroyedError") extern class ClientDestroyedError extends UndiciError {
	static var prototype : ClientDestroyedError;
}