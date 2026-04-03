package js.html;

/**
	The **`Request`** interface of the Fetch API represents a resource request.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request)
**/
typedef IRequest = {
	/**
		The **`cache`** read-only property of the Request interface contains the cache mode of the request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/cache)
	**/
	final cache : js.html.RequestCache;
	/**
		The **`credentials`** read-only property of the Request interface reflects the value given to the Request.Request() constructor in the `credentials` option.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/credentials)
	**/
	final credentials : js.html.RequestCredentials;
	/**
		The **`destination`** read-only property of the **Request** interface returns a string describing the type of content being requested.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/destination)
	**/
	final destination : js.html.RequestDestination;
	/**
		The **`headers`** read-only property of the with the request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/headers)
	**/
	final headers : js.html.Headers;
	/**
		The **`integrity`** read-only property of the Request interface contains the subresource integrity value of the request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/integrity)
	**/
	final integrity : String;
	/**
		The **`keepalive`** read-only property of the Request interface contains the request's `keepalive` setting (`true` or `false`), which indicates whether the browser will keep the associated request alive if the page that initiated it is unloaded before the request is complete.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/keepalive)
	**/
	final keepalive : Bool;
	/**
		The **`method`** read-only property of the `POST`, etc.) A String indicating the method of the request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/method)
	**/
	final method : String;
	/**
		The **`mode`** read-only property of the Request interface contains the mode of the request (e.g., `cors`, `no-cors`, `same-origin`, or `navigate`.) This is used to determine if cross-origin requests lead to valid responses, and which properties of the response are readable.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/mode)
	**/
	final mode : js.html.RequestMode;
	/**
		The **`redirect`** read-only property of the Request interface contains the mode for how redirects are handled.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/redirect)
	**/
	final redirect : js.html.RequestRedirect;
	/**
		The **`referrer`** read-only property of the Request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/referrer)
	**/
	final referrer : String;
	/**
		The **`referrerPolicy`** read-only property of the referrer information, sent in the Referer header, should be included with the request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/referrerPolicy)
	**/
	final referrerPolicy : js.html.ReferrerPolicy;
	/**
		The read-only **`signal`** property of the Request interface returns the AbortSignal associated with the request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/signal)
	**/
	final signal : js.html.AbortSignal;
	/**
		The **`url`** read-only property of the Request interface contains the URL of the request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/url)
	**/
	final url : String;
	/**
		The **`clone()`** method of the Request interface creates a copy of the current `Request` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request/clone)
	**/
	function clone():js.html.Request;
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