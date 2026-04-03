package undici_types.errors;

/**
	There is an error with the socket.
**/
@:jsRequire("undici-types", "errors.SocketError") extern class SocketError extends UndiciError {
	var socket : Null<undici_types.client.SocketInfo>;
	static var prototype : SocketError;
}