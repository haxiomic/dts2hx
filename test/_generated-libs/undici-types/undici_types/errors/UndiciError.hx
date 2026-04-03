package undici_types.errors;

@:jsRequire("undici-types", "errors.UndiciError") extern class UndiciError extends js.lib.Error {
	var code : String;
	static var prototype : UndiciError;
}