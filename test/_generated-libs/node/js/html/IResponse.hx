package js.html;

/**
	The **`Response`** interface of the Fetch API represents the response to a request.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response)
**/
typedef IResponse = {
	/**
		The **`headers`** read-only property of the with the response.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/headers)
	**/
	final headers : js.html.Headers;
	/**
		The **`ok`** read-only property of the Response interface contains a Boolean stating whether the response was successful (status in the range 200-299) or not.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/ok)
	**/
	final ok : Bool;
	/**
		The **`redirected`** read-only property of the Response interface indicates whether or not the response is the result of a request you made which was redirected.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/redirected)
	**/
	final redirected : Bool;
	/**
		The **`status`** read-only property of the Response interface contains the HTTP status codes of the response.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/status)
	**/
	final status : Float;
	/**
		The **`statusText`** read-only property of the Response interface contains the status message corresponding to the HTTP status code in Response.status.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/statusText)
	**/
	final statusText : String;
	/**
		The **`type`** read-only property of the Response interface contains the type of the response.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/type)
	**/
	final type : js.html.ResponseType;
	/**
		The **`url`** read-only property of the Response interface contains the URL of the response.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/url)
	**/
	final url : String;
	/**
		The **`clone()`** method of the Response interface creates a clone of a response object, identical in every way, but stored in a different variable.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/clone)
	**/
	function clone():js.html.Response;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/body)
	**/
	final body : Null<ReadableStream<js.lib.Uint8Array_<js.lib.ArrayBuffer>>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/bodyUsed)
	**/
	final bodyUsed : Bool;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/arrayBuffer)
	**/
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/blob)
	**/
	function blob():js.lib.Promise<js.html.Blob>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/bytes)
	**/
	function bytes():js.lib.Promise<js.lib.Uint8Array_<js.lib.ArrayBuffer>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/formData)
	**/
	function formData():js.lib.Promise<js.html.FormData>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/json)
	**/
	function json():js.lib.Promise<Dynamic>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/text)
	**/
	function text():js.lib.Promise<String>;
};