package undici_types.mock_interceptor;

/**
	The scope associated with a mock dispatch.
**/
@:jsRequire("undici-types/mock-interceptor", "MockScope") extern class MockScope<TData> {
	function new(mockDispatch:undici_types.mock_interceptor.mockinterceptor.MockDispatch<TData, js.lib.Error>);
	/**
		Delay a reply by a set amount of time in ms.
	**/
	function delay(waitInMs:Float):MockScope<TData>;
	/**
		Persist the defined mock data for the associated reply. It will return the defined mock data indefinitely.
	**/
	function persist():MockScope<TData>;
	/**
		Define a reply for a set amount of matching requests.
	**/
	function times(repeatTimes:Float):MockScope<TData>;
	static var prototype : MockScope<Dynamic>;
}