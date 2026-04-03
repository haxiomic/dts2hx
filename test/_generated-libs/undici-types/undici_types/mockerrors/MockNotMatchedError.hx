package undici_types.mockerrors;

/**
	The request does not match any registered mock dispatches.
**/
@:jsRequire("undici-types", "mockErrors.MockNotMatchedError") extern class MockNotMatchedError extends undici_types.errors.UndiciError {
	function new(?message:String);
	static var prototype : MockNotMatchedError;
}